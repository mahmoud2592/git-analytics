require 'rails_helper'

RSpec.describe "repositories/show", type: :view do
  before(:each) do
    @repository = assign(:repository, Repository.create!(
      name: "Name",
      description: "MyText",
      programming_language: "Programming Language",
      license: "License",
      url: "Url",
      default_branch: "Default Branch",
      stars_count: 2,
      forks_count: 3,
      watchers_count: 4,
      issues_count: 5,
      pull_requests_count: 6,
      commit_count: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Programming Language/)
    expect(rendered).to match(/License/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Default Branch/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
