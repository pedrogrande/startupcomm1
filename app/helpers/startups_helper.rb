module StartupsHelper
	def premium_listing(startup)
		@startup = Startup.find(startup)
		@premium_listings = PremiumListing.where(startup_id: @startup.id)
		if @premium_listings.any?
			"(PREMIUM LISTING)"
		end
	end
end
