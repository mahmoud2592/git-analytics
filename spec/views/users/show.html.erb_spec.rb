require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Profile Picture/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Twitter Url/)
    expect(rendered).to match(/Facebook Url/)
    expect(rendered).to match(/Linkedin Url/)
    expect(rendered).to match(/Github Url/)
    expect(rendered).to match(/Website Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
  end
end
