require 'rails_helper'

RSpec.describe "admin_users/new", type: :view do
  before(:each) do
    assign(:admin_user, AdminUser.new(
      name: "MyString",
      email: "MyString",
      password_digest: "MyString",
      is_admin: false
    ))
  end

  it "renders new admin_user form" do
    render

    assert_select "form[action=?][method=?]", admin_users_path, "post" do

      assert_select "input[name=?]", "admin_user[name]"

      assert_select "input[name=?]", "admin_user[email]"

      assert_select "input[name=?]", "admin_user[password_digest]"

      assert_select "input[name=?]", "admin_user[is_admin]"
    end
  end
end
