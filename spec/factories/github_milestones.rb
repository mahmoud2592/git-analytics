FactoryBot.define do
  factory :github_milestone do
    milestone_id { 1 }
    title { "MyString" }
    description { "MyString" }
    due_date { "2023-04-25 00:25:36" }
    status { "MyString" }
    url { "MyString" }
    repository_id { 1 }
  end
end
