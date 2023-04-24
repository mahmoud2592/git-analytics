require "rails_helper"

RSpec.describe ActivityLogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/activity_logs").to route_to("activity_logs#index")
    end

    it "routes to #new" do
      expect(get: "/activity_logs/new").to route_to("activity_logs#new")
    end

    it "routes to #show" do
      expect(get: "/activity_logs/1").to route_to("activity_logs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/activity_logs/1/edit").to route_to("activity_logs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/activity_logs").to route_to("activity_logs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/activity_logs/1").to route_to("activity_logs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/activity_logs/1").to route_to("activity_logs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/activity_logs/1").to route_to("activity_logs#destroy", id: "1")
    end
  end
end
