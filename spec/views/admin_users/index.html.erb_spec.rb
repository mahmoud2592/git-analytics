require 'rails_helper'

RSpec.describe "admin_users/index", type: :view do
  before(:each) do
    assign(:admin_users, [
      AdminUser.create!(
        name: "Name",
        email: "Email",
        password_digest: "Password Digest",
        is_admin: false
      ),
      AdminUser.create!(
        name: "Name",
        email: "Email",
        password_digest: "Password Digest",
        is_admin: false
      )
    ])
  end

  it "renders a list of admin_users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Password Digest".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
