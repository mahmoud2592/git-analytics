json.extract! activity_log, :id, :user_id, :action, :record_id, :record_type, :d_at, :created_at, :updated_at
json.url activity_log_url(activity_log, format: :json)
