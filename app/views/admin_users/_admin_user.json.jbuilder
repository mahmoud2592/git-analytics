json.extract! admin_user, :id, :name, :email, :password_digest, :is_admin, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
