json.array!(@locations) do |location|
  json.extract! location, :id, :startup_id, :street, :suburb, :state, :postcode, :country
  json.url location_url(location, format: :json)
end
