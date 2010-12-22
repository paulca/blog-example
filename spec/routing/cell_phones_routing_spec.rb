require "spec_helper"

describe CellPhonesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/cell_phones" }.should route_to(:controller => "cell_phones", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/cell_phones/new" }.should route_to(:controller => "cell_phones", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/cell_phones/1" }.should route_to(:controller => "cell_phones", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/cell_phones/1/edit" }.should route_to(:controller => "cell_phones", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/cell_phones" }.should route_to(:controller => "cell_phones", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/cell_phones/1" }.should route_to(:controller => "cell_phones", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/cell_phones/1" }.should route_to(:controller => "cell_phones", :action => "destroy", :id => "1")
    end

  end
end
