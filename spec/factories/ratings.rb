FactoryBot.define do
  factory :rating do
    user_id { 1 }
    repository_id { 1 }
    rating { 1 }
    feedback { "MyText" }
  end
end
