require 'rails_helper'

RSpec.describe "ratings/show", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      user_id: 2,
      repository_id: 3,
      rating: 4,
      feedback: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
  end
end
