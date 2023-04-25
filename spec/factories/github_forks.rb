FactoryBot.define do
  factory :github_fork do
    fork_id { 1 }
    forked_from_repository_id { 1 }
    forked_to_repository_id { 1 }
  end
end
