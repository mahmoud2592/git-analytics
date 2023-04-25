FactoryBot.define do
  factory :users_repository do
    user_id { 1 }
    repository_id { 1 }
    date_added { "2023-04-24" }
    last_viewed { "2023-04-24" }
  end
end
