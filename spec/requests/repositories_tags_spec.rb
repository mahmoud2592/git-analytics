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

RSpec.describe "/repositories_tags", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # RepositoriesTag. As you add validations to RepositoriesTag, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      RepositoriesTag.create! valid_attributes
      get repositories_tags_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      repositories_tag = RepositoriesTag.create! valid_attributes
      get repositories_tag_url(repositories_tag)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_repositories_tag_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      repositories_tag = RepositoriesTag.create! valid_attributes
      get edit_repositories_tag_url(repositories_tag)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new RepositoriesTag" do
        expect {
          post repositories_tags_url, params: { repositories_tag: valid_attributes }
        }.to change(RepositoriesTag, :count).by(1)
      end

      it "redirects to the created repositories_tag" do
        post repositories_tags_url, params: { repositories_tag: valid_attributes }
        expect(response).to redirect_to(repositories_tag_url(RepositoriesTag.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new RepositoriesTag" do
        expect {
          post repositories_tags_url, params: { repositories_tag: invalid_attributes }
        }.to change(RepositoriesTag, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post repositories_tags_url, params: { repositories_tag: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested repositories_tag" do
        repositories_tag = RepositoriesTag.create! valid_attributes
        patch repositories_tag_url(repositories_tag), params: { repositories_tag: new_attributes }
        repositories_tag.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the repositories_tag" do
        repositories_tag = RepositoriesTag.create! valid_attributes
        patch repositories_tag_url(repositories_tag), params: { repositories_tag: new_attributes }
        repositories_tag.reload
        expect(response).to redirect_to(repositories_tag_url(repositories_tag))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        repositories_tag = RepositoriesTag.create! valid_attributes
        patch repositories_tag_url(repositories_tag), params: { repositories_tag: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested repositories_tag" do
      repositories_tag = RepositoriesTag.create! valid_attributes
      expect {
        delete repositories_tag_url(repositories_tag)
      }.to change(RepositoriesTag, :count).by(-1)
    end

    it "redirects to the repositories_tags list" do
      repositories_tag = RepositoriesTag.create! valid_attributes
      delete repositories_tag_url(repositories_tag)
      expect(response).to redirect_to(repositories_tags_url)
    end
  end
end
