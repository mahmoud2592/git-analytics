require 'rails_helper'

RSpec.describe "searches/index", type: :view do
  before(:each) do
    assign(:searches, [
      Search.create!(
        query: "Query",
        filters: "MyText",
        result_count: 2,
        user_id: 3
      ),
      Search.create!(
        query: "Query",
        filters: "MyText",
        result_count: 2,
        user_id: 3
      )
    ])
  end

  it "renders a list of searches" do
    render
    assert_select "tr>td", text: "Query".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
