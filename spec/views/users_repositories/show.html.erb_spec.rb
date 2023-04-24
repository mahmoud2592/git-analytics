require 'rails_helper'

RSpec.describe "users_repositories/show", type: :view do
  before(:each) do
    @users_repository = assign(:users_repository, UsersRepository.create!(
      user_id: 2,
      repository_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
