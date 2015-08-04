json.array!(@events) do |event|
  json.extract! event, :id, :user_id, :start_time, :end_time, :name, :description, :location_name, :street_address, :suburb, :state, :postcode, :country, :website, :hashtag, :organiser, :logo, :banner, :price
  json.url event_url(event, format: :json)
end
