json.array!(@messages) do |message|
  json.extract! message, :id, :receiver_id, :sender_id, :subject, :message, :read
  json.url message_url(message, format: :json)
end
