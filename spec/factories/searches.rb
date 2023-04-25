FactoryBot.define do
  factory :search do
    query { "MyString" }
    filters { "MyText" }
    result_count { 1 }
    user_id { 1 }
  end
end
