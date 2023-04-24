require 'rails_helper'

RSpec.describe "repositories_tags/show", type: :view do
  before(:each) do
    @repositories_tag = assign(:repositories_tag, RepositoriesTag.create!(
      repository_id: 2,
      tag_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
