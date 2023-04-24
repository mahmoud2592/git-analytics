json.extract! users_repository, :id, :user_id, :repository_id, :date_added, :last_viewed, :created_at, :updated_at
json.url users_repository_url(users_repository, format: :json)
