json.extract! commit, :id, :sha, :author_name, :author_email, :message, :committed_date, :repository_id, :day, :week, :month, :created_at, :updated_at
json.url commit_url(commit, format: :json)
