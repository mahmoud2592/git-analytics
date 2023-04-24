FactoryBot.define do
  factory :admin_user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    is_admin { false }
  end
end
