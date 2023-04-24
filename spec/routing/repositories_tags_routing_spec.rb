require "rails_helper"

RSpec.describe RepositoriesTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/repositories_tags").to route_to("repositories_tags#index")
    end

    it "routes to #new" do
      expect(get: "/repositories_tags/new").to route_to("repositories_tags#new")
    end

    it "routes to #show" do
      expect(get: "/repositories_tags/1").to route_to("repositories_tags#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/repositories_tags/1/edit").to route_to("repositories_tags#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/repositories_tags").to route_to("repositories_tags#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/repositories_tags/1").to route_to("repositories_tags#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/repositories_tags/1").to route_to("repositories_tags#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/repositories_tags/1").to route_to("repositories_tags#destroy", id: "1")
    end
  end
end
