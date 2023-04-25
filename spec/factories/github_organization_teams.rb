FactoryBot.define do
  factory :github_organization_team do
    team_id { 1 }
    name { "MyString" }
    description { "MyString" }
    permission { "MyString" }
    url { "MyString" }
    organization_id { 1 }
  end
end
