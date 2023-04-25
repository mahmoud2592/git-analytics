require 'rails_helper'

RSpec.describe "commits/show", type: :view do
  before(:each) do
    @commit = assign(:commit, Commit.create!(
      sha: "Sha",
      author_name: "Author Name",
      author_email: "Author Email",
      message: "MyText",
      repository_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sha/)
    expect(rendered).to match(/Author Name/)
    expect(rendered).to match(/Author Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
