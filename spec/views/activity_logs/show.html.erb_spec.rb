require 'rails_helper'

RSpec.describe "activity_logs/show", type: :view do
  before(:each) do
    @activity_log = assign(:activity_log, ActivityLog.create!(
      user_id: 2,
      action: "Action",
      record_id: 3,
      record_type: "Record Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Action/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Record Type/)
  end
end
