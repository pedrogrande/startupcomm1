json.array!(@premium_listings) do |premium_listing|
  json.extract! premium_listing, :id, :user_id, :startup_id, :price, :expiry_date
  json.url premium_listing_url(premium_listing, format: :json)
end
