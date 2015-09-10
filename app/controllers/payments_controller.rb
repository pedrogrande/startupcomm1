class PaymentsController < ApplicationController

	def create
		# Amount in cents
		  @amount = params[:price].to_i
		  @startup = Startup.find(params[:startup])

		  customer = Stripe::Customer.create(
		    :email => current_user.email,
		    :card  => params[:stripeToken]
		  )

		  charge = Stripe::Charge.create(
		    :customer    => customer.id,
		    :amount      => @amount,
		    :description => 'Premium Listing for ' + @startup.name,
		    :currency    => 'aud'
		  )

		 if charge["paid"] == true
		 	@premium_listing = PremiumListing.create(user_id: current_user.id, startup_id: @startup.id, price: @amount / 100.0, expiry_date: DateTime.now + 30.days)
		 	redirect_to startup_path(@startup)
		 end

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to startup_path(@startup)
	end
end