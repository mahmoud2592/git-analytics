require 'rails_helper'

RSpec.describe "views/new", type: :view do
  before(:each) do
    assign(:view, View.new(
      user_id: 1,
      repository_id: 1,
      ip_address: "MyString",
      device: "MyString",
      duration: 1
    ))
  end

  it "renders new view form" do
    render

    assert_select "form[action=?][method=?]", views_path, "post" do

      assert_select "input[name=?]", "view[user_id]"

      assert_select "input[name=?]", "view[repository_id]"

      assert_select "input[name=?]", "view[ip_address]"

      assert_select "input[name=?]", "view[device]"

      assert_select "input[name=?]", "view[duration]"
    end
  end
end
