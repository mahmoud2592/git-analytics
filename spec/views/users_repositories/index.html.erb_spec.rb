require 'rails_helper'

RSpec.describe "users_repositories/index", type: :view do
  before(:each) do
    assign(:users_repositories, [
      UsersRepository.create!(
        user_id: 2,
        repository_id: 3
      ),
      UsersRepository.create!(
        user_id: 2,
        repository_id: 3
      )
    ])
  end

  it "renders a list of users_repositories" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
