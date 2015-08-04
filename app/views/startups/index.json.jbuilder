json.array!(@startups) do |startup|
  json.extract! startup, :id, :name, :description, :logo, :website, :owner_id
  json.url startup_url(startup, format: :json)
end
