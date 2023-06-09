require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/users_repositories", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # UsersRepository. As you add validations to UsersRepository, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      UsersRepository.create! valid_attributes
      get users_repositories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      users_repository = UsersRepository.create! valid_attributes
      get users_repository_url(users_repository)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_users_repository_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      users_repository = UsersRepository.create! valid_attributes
      get edit_users_repository_url(users_repository)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new UsersRepository" do
        expect {
          post users_repositories_url, params: { users_repository: valid_attributes }
        }.to change(UsersRepository, :count).by(1)
      end

      it "redirects to the created users_repository" do
        post users_repositories_url, params: { users_repository: valid_attributes }
        expect(response).to redirect_to(users_repository_url(UsersRepository.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new UsersRepository" do
        expect {
          post users_repositories_url, params: { users_repository: invalid_attributes }
        }.to change(UsersRepository, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post users_repositories_url, params: { users_repository: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested users_repository" do
        users_repository = UsersRepository.create! valid_attributes
        patch users_repository_url(users_repository), params: { users_repository: new_attributes }
        users_repository.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the users_repository" do
        users_repository = UsersRepository.create! valid_attributes
        patch users_repository_url(users_repository), params: { users_repository: new_attributes }
        users_repository.reload
        expect(response).to redirect_to(users_repository_url(users_repository))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        users_repository = UsersRepository.create! valid_attributes
        patch users_repository_url(users_repository), params: { users_repository: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested users_repository" do
      users_repository = UsersRepository.create! valid_attributes
      expect {
        delete users_repository_url(users_repository)
      }.to change(UsersRepository, :count).by(-1)
    end

    it "redirects to the users_repositories list" do
      users_repository = UsersRepository.create! valid_attributes
      delete users_repository_url(users_repository)
      expect(response).to redirect_to(users_repositories_url)
    end
  end
end
