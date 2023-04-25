# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# git-analytics


rails generate scaffold Users name:string email:string password_digest:string profile_picture:string bio:text location:string twitter_url:string facebook_url:string linkedin_url:string github_url:string website_url:string role:integer latitude:float longitude:float
rails generate scaffold Repositories name:string description:text programming_language:string license:string url:string default_branch:string stars_count:integer forks_count:integer watchers_count:integer issues_count:integer pull_requests_count:integer commit_count:integer
rails generate scaffold Searches query:string filters:text result_count:integer user_id:integer
ails generate scaffold Tags name:string description:text popularity:integer related_tags:text
rails generate scaffold UsersRepositories user_id:integer repository_id:integer date_added:date last_viewed:date
rails generate scaffold Views user_id:integer repository_id:integer ip_address:string device:string duration:integer
rails generate scaffold Ratings user_id:integer repository_id:integer rating:integer feedback:text
rails generate scaffold Comments user_id:integer repository_id:integer body:text upvotes:integer downvotes:integer d_at:datetime
rails generate scaffold ActivityLogs user_id:integer action:string record_id:integer record_type:string d_at:datetime
rails generate scaffold AdminUsers name:string email:string password_digest:string is_admin:boolean
rails generate scaffold Analytics user_id:integer repository_id:integer search_id:integer tag_id:integer view_id:integer rating_id:integer comment_id:integer activity_log_id:integer
rails generate scaffold Feedback user_id:integer category:string message:text
rails generate scaffold RepositoriesTags repository_id:integer tag_id:integer
rails g scaffold Commits sha:string author_name:string author_email:string message:text committed_date:datetime repository_id:integer day:datetime week:datetime month:datetime

<!--
rails generate scaffold Repository name:string description:text language:string stars_count:integer forks_count:integer url:string
rails generate scaffold User username:string name:string email:string location:string bio:text url:string
rails generate scaffold Commit message:text author:string timestamp:datetime url:string repository:references
rails generate scaffold Issue title:string description:text author:string assignee:string status:string labels:text timestamp:datetime url:string repository:references
rails generate scaffold PullRequest title:string description:text author:string assignee:string status:string labels:text timestamp:datetime url:string repository:references
rails generate scaffold Label name:string color:string description:text url:string repository:references
rails generate scaffold Milestone title:string description:text due_date:date status:string url:string repository:references
rails generate scaffold Contributor username:string profile_link:string contributions_count:integer url:string repository:references
rails generate scaffold Branch name:string last_commit:string url:string repository:references
rails generate scaffold Release tag_name:string target_commitish:string name:string body:text url:string repository:references
rails generate scaffold Fork forked_from_repository:references forked_to_repository:references
rails generate scaffold Watcher repository:references user:references
rails generate scaffold Collaborator username:string permission:string repository:references
rails generate scaffold OrganizationMember organization:references username:string url:string
rails generate scaffold OrganizationTeam name:string description:text permission:string url:string organization:references -->

rails generate model GithubRepository name:string description:string language:string stars:integer forks:integer url:string

rails generate model GithubUser user_id:integer username:string name:string email:string location:string bio:string url:string

rails generate model GithubCommit commit_id:integer commit_message:string author:string timestamp:datetime url:string repository_id:integer

rails generate model GithubIssue issue_id:integer title:string description:string author:string assignee:string status:string labels:string timestamp:datetime url:string repository_id:integer

rails generate model GithubPullRequest pull_request_id:integer title:string description:string author:string assignee:string status:string labels:string timestamp:datetime url:string repository_id:integer

rails generate model GithubLabel label_id:integer name:string color:string description:string url:string repository_id:integer

rails generate model GithubMilestone milestone_id:integer title:string description:string due_date:datetime status:string url:string repository_id:integer

rails generate model GithubContributor contributor_id:integer username:string profile_link:string number_of_contributions:integer url:string repository_id:integer

rails generate model GithubBranch branch_id:integer name:string last_commit:string url:string repository_id:integer

rails generate model GithubRelease release_id:integer tag_name:string target_commitish:string name:string body:string url:string repository_id:integer

rails generate model GithubFork fork_id:integer forked_from_repository_id:integer forked_to_repository_id:integer

rails generate model GithubWatcher watcher_id:integer repository_id:integer user_id:integer

rails generate model GithubCollaborator collaborator_id:integer username:string permission:string repository_id:integer

rails generate model GithubOrganizationMember member_id:integer organization_id:integer username:string url:string

rails generate model GithubOrganizationTeam team_id:integer name:string description:string permission:string url:string organization_id:integer




