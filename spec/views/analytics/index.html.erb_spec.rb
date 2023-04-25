require 'rails_helper'

RSpec.describe "analytics/index", type: :view do
  before(:each) do
    assign(:analytics, [
      Analytic.create!(
        user_id: 2,
        repository_id: 3,
        search_id: 4,
        tag_id: 5,
        view_id: 6,
        rating_id: 7,
        comment_id: 8,
        activity_log_id: 9
      ),
      Analytic.create!(
        user_id: 2,
        repository_id: 3,
        search_id: 4,
        tag_id: 5,
        view_id: 6,
        rating_id: 7,
        comment_id: 8,
        activity_log_id: 9
      )
    ])
  end

  it "renders a list of analytics" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: 8.to_s, count: 2
    assert_select "tr>td", text: 9.to_s, count: 2
  end
end
