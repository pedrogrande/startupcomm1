json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :startup_id, :rating, :content
  json.url review_url(review, format: :json)
end
