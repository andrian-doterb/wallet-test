require "rails_helper"

RSpec.describe TopupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/topups").to route_to("topups#index")
    end

    it "routes to #new" do
      expect(get: "/topups/new").to route_to("topups#new")
    end

    it "routes to #show" do
      expect(get: "/topups/1").to route_to("topups#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/topups/1/edit").to route_to("topups#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/topups").to route_to("topups#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/topups/1").to route_to("topups#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/topups/1").to route_to("topups#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/topups/1").to route_to("topups#destroy", id: "1")
    end
  end
end
