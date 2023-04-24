FactoryBot.define do
  factory :view do
    user_id { 1 }
    repository_id { 1 }
    ip_address { "MyString" }
    device { "MyString" }
    duration { 1 }
  end
end
