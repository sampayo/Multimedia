require "spec_helper"

describe ConfiguracionsController do
  describe "routing" do

    it "routes to #index" do
      get("/configuracions").should route_to("configuracions#index")
    end

    it "routes to #new" do
      get("/configuracions/new").should route_to("configuracions#new")
    end

    it "routes to #show" do
      get("/configuracions/1").should route_to("configuracions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuracions/1/edit").should route_to("configuracions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuracions").should route_to("configuracions#create")
    end

    it "routes to #update" do
      put("/configuracions/1").should route_to("configuracions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuracions/1").should route_to("configuracions#destroy", :id => "1")
    end

  end
end
