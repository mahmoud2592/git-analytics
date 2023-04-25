json.extract! view, :id, :user_id, :repository_id, :ip_address, :device, :duration, :created_at, :updated_at
json.url view_url(view, format: :json)
