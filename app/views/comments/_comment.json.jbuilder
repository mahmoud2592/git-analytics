json.extract! comment, :id, :user_id, :repository_id, :body, :upvotes, :downvotes, :d_at, :created_at, :updated_at
json.url comment_url(comment, format: :json)
