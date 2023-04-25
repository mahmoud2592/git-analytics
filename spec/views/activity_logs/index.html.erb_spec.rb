require 'rails_helper'

RSpec.describe "activity_logs/index", type: :view do
  before(:each) do
    assign(:activity_logs, [
      ActivityLog.create!(
        user_id: 2,
        action: "Action",
        record_id: 3,
        record_type: "Record Type"
      ),
      ActivityLog.create!(
        user_id: 2,
        action: "Action",
        record_id: 3,
        record_type: "Record Type"
      )
    ])
  end

  it "renders a list of activity_logs" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Action".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Record Type".to_s, count: 2
  end
end
