require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      name: "MyString",
      email: "MyString",
      password_digest: "MyString",
      profile_picture: "MyString",
      bio: "MyText",
      location: "MyString",
      twitter_url: "MyString",
      facebook_url: "MyString",
      linkedin_url: "MyString",
      github_url: "MyString",
      website_url: "MyString",
      role: 1,
      latitude: 1.5,
      longitude: 1.5
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[password_digest]"

      assert_select "input[name=?]", "user[profile_picture]"

      assert_select "textarea[name=?]", "user[bio]"

      assert_select "input[name=?]", "user[location]"

      assert_select "input[name=?]", "user[twitter_url]"

      assert_select "input[name=?]", "user[facebook_url]"

      assert_select "input[name=?]", "user[linkedin_url]"

      assert_select "input[name=?]", "user[github_url]"

      assert_select "input[name=?]", "user[website_url]"

      assert_select "input[name=?]", "user[role]"

      assert_select "input[name=?]", "user[latitude]"

      assert_select "input[name=?]", "user[longitude]"
    end
  end
end
