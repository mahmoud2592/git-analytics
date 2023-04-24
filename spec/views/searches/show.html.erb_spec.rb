require 'rails_helper'

RSpec.describe "searches/show", type: :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      query: "Query",
      filters: "MyText",
      result_count: 2,
      user_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Query/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
