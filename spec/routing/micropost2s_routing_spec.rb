require "spec_helper"

describe Micropost2sController do
  describe "routing" do

    it "routes to #index" do
      get("/micropost2s").should route_to("micropost2s#index")
    end

    it "routes to #new" do
      get("/micropost2s/new").should route_to("micropost2s#new")
    end

    it "routes to #show" do
      get("/micropost2s/1").should route_to("micropost2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/micropost2s/1/edit").should route_to("micropost2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/micropost2s").should route_to("micropost2s#create")
    end

    it "routes to #update" do
      put("/micropost2s/1").should route_to("micropost2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/micropost2s/1").should route_to("micropost2s#destroy", :id => "1")
    end

  end
end
