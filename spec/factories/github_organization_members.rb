FactoryBot.define do
  factory :github_organization_member do
    member_id { 1 }
    organization_id { 1 }
    username { "MyString" }
    url { "MyString" }
  end
end
