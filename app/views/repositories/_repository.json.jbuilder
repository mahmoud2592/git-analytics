json.extract! repository, :id, :name, :description, :programming_language, :license, :url, :default_branch, :stars_count, :forks_count, :watchers_count, :issues_count, :pull_requests_count, :commit_count, :created_at, :updated_at
json.url repository_url(repository, format: :json)
