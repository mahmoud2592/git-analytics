json.extract! feedback, :id, :user_id, :category, :message, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
