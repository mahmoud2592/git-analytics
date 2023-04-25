require 'rails_helper'

RSpec.describe "admin_users/show", type: :view do
  before(:each) do
    @admin_user = assign(:admin_user, AdminUser.create!(
      name: "Name",
      email: "Email",
      password_digest: "Password Digest",
      is_admin: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/false/)
  end
end
