require "rails_helper"

RSpec.describe UsersRepositoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/users_repositories").to route_to("users_repositories#index")
    end

    it "routes to #new" do
      expect(get: "/users_repositories/new").to route_to("users_repositories#new")
    end

    it "routes to #show" do
      expect(get: "/users_repositories/1").to route_to("users_repositories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/users_repositories/1/edit").to route_to("users_repositories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/users_repositories").to route_to("users_repositories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/users_repositories/1").to route_to("users_repositories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/users_repositories/1").to route_to("users_repositories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/users_repositories/1").to route_to("users_repositories#destroy", id: "1")
    end
  end
end
