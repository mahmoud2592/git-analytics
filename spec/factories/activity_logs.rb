FactoryBot.define do
  factory :activity_log do
    user_id { 1 }
    action { "MyString" }
    record_id { 1 }
    record_type { "MyString" }
    d_at { "2023-04-24 20:14:49" }
  end
end
