require "spec_helper"

describe SeguidoresController do
  describe "routing" do

    it "routes to #index" do
      get("/seguidores").should route_to("seguidores#index")
    end

    it "routes to #new" do
      get("/seguidores/new").should route_to("seguidores#new")
    end

    it "routes to #show" do
      get("/seguidores/1").should route_to("seguidores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seguidores/1/edit").should route_to("seguidores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seguidores").should route_to("seguidores#create")
    end

    it "routes to #update" do
      put("/seguidores/1").should route_to("seguidores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seguidores/1").should route_to("seguidores#destroy", :id => "1")
    end

  end
end
