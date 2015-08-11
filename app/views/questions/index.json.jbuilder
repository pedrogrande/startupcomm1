json.array!(@questions) do |question|
  json.extract! question, :id, :user_id, :title, :description, :views, :answered_at, :selected_answer
  json.url question_url(question, format: :json)
end
