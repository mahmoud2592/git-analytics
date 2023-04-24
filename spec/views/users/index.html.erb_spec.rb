require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Name",
        email: "Email",
        password_digest: "Password Digest",
        profile_picture: "Profile Picture",
        bio: "MyText",
        location: "Location",
        twitter_url: "Twitter Url",
        facebook_url: "Facebook Url",
        linkedin_url: "Linkedin Url",
        github_url: "Github Url",
        website_url: "Website Url",
        role: 2,
        latitude: 3.5,
        longitude: 4.5
      ),
      User.create!(
        name: "Name",
        email: "Email",
        password_digest: "Password Digest",
        profile_picture: "Profile Picture",
        bio: "MyText",
        location: "Location",
        twitter_url: "Twitter Url",
        facebook_url: "Facebook Url",
        linkedin_url: "Linkedin Url",
        github_url: "Github Url",
        website_url: "Website Url",
        role: 2,
        latitude: 3.5,
        longitude: 4.5
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Password Digest".to_s, count: 2
    assert_select "tr>td", text: "Profile Picture".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Twitter Url".to_s, count: 2
    assert_select "tr>td", text: "Facebook Url".to_s, count: 2
    assert_select "tr>td", text: "Linkedin Url".to_s, count: 2
    assert_select "tr>td", text: "Github Url".to_s, count: 2
    assert_select "tr>td", text: "Website Url".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
  end
end
