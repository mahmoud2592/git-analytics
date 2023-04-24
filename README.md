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
