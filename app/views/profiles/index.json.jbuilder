json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :profile_pic, :bio, :city, :country, :twitter, :linkedin, :website, :user_id
  json.url profile_url(profile, format: :json)
end
