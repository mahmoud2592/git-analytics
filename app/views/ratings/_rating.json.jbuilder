json.extract! rating, :id, :user_id, :repository_id, :rating, :feedback, :created_at, :updated_at
json.url rating_url(rating, format: :json)
