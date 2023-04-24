require 'rails_helper'

RSpec.describe "views/edit", type: :view do
  before(:each) do
    @view = assign(:view, View.create!(
      user_id: 1,
      repository_id: 1,
      ip_address: "MyString",
      device: "MyString",
      duration: 1
    ))
  end

  it "renders the edit view form" do
    render

    assert_select "form[action=?][method=?]", view_path(@view), "post" do

      assert_select "input[name=?]", "view[user_id]"

      assert_select "input[name=?]", "view[repository_id]"

      assert_select "input[name=?]", "view[ip_address]"

      assert_select "input[name=?]", "view[device]"

      assert_select "input[name=?]", "view[duration]"
    end
  end
end
