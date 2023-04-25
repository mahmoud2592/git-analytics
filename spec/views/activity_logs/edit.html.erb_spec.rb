require 'rails_helper'

RSpec.describe "activity_logs/edit", type: :view do
  before(:each) do
    @activity_log = assign(:activity_log, ActivityLog.create!(
      user_id: 1,
      action: "MyString",
      record_id: 1,
      record_type: "MyString"
    ))
  end

  it "renders the edit activity_log form" do
    render

    assert_select "form[action=?][method=?]", activity_log_path(@activity_log), "post" do

      assert_select "input[name=?]", "activity_log[user_id]"

      assert_select "input[name=?]", "activity_log[action]"

      assert_select "input[name=?]", "activity_log[record_id]"

      assert_select "input[name=?]", "activity_log[record_type]"
    end
  end
end
