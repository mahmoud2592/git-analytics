FactoryBot.define do
  factory :repository do
    name { "MyString" }
    description { "MyText" }
    programming_language { "MyString" }
    license { "MyString" }
    url { "MyString" }
    default_branch { "MyString" }
    stars_count { 1 }
    forks_count { 1 }
    watchers_count { 1 }
    issues_count { 1 }
    pull_requests_count { 1 }
    commit_count { 1 }
  end
end
