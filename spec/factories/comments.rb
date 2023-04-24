FactoryBot.define do
  factory :comment do
    user_id { 1 }
    repository_id { 1 }
    body { "MyText" }
    upvotes { 1 }
    downvotes { 1 }
    d_at { "2023-04-24 20:14:46" }
  end
end
