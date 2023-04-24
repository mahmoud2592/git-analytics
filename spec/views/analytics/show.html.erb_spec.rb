require 'rails_helper'

RSpec.describe "analytics/show", type: :view do
  before(:each) do
    @analytic = assign(:analytic, Analytic.create!(
      user_id: 2,
      repository_id: 3,
      search_id: 4,
      tag_id: 5,
      view_id: 6,
      rating_id: 7,
      comment_id: 8,
      activity_log_id: 9
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
  end
end
