require "spec_helper"

describe Micropost1sController do
  describe "routing" do

    it "routes to #index" do
      get("/micropost1s").should route_to("micropost1s#index")
    end

    it "routes to #new" do
      get("/micropost1s/new").should route_to("micropost1s#new")
    end

    it "routes to #show" do
      get("/micropost1s/1").should route_to("micropost1s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/micropost1s/1/edit").should route_to("micropost1s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/micropost1s").should route_to("micropost1s#create")
    end

    it "routes to #update" do
      put("/micropost1s/1").should route_to("micropost1s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/micropost1s/1").should route_to("micropost1s#destroy", :id => "1")
    end

  end
end
