FactoryBot.define do
  factory :feedback do
    user_id { 1 }
    category { "MyString" }
    message { "MyText" }
  end
end
