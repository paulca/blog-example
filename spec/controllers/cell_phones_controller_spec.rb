require 'spec_helper'

describe CellPhonesController do

  def mock_cell_phone(stubs={})
    (@mock_cell_phone ||= mock_model(CellPhone).as_null_object).tap do |cell_phone|
      cell_phone.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all cell_phones as @cell_phones" do
      CellPhone.stub(:all) { [mock_cell_phone] }
      get :index
      assigns(:cell_phones).should eq([mock_cell_phone])
    end
  end

  describe "GET show" do
    it "assigns the requested cell_phone as @cell_phone" do
      CellPhone.stub(:find).with("37") { mock_cell_phone }
      get :show, :id => "37"
      assigns(:cell_phone).should be(mock_cell_phone)
    end
  end

  describe "GET new" do
    it "assigns a new cell_phone as @cell_phone" do
      CellPhone.stub(:new) { mock_cell_phone }
      get :new
      assigns(:cell_phone).should be(mock_cell_phone)
    end
  end

  describe "GET edit" do
    it "assigns the requested cell_phone as @cell_phone" do
      CellPhone.stub(:find).with("37") { mock_cell_phone }
      get :edit, :id => "37"
      assigns(:cell_phone).should be(mock_cell_phone)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created cell_phone as @cell_phone" do
        CellPhone.stub(:new).with({'these' => 'params'}) { mock_cell_phone(:save => true) }
        post :create, :cell_phone => {'these' => 'params'}
        assigns(:cell_phone).should be(mock_cell_phone)
      end

      it "redirects to the created cell_phone" do
        CellPhone.stub(:new) { mock_cell_phone(:save => true) }
        post :create, :cell_phone => {}
        response.should redirect_to(cell_phone_url(mock_cell_phone))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cell_phone as @cell_phone" do
        CellPhone.stub(:new).with({'these' => 'params'}) { mock_cell_phone(:save => false) }
        post :create, :cell_phone => {'these' => 'params'}
        assigns(:cell_phone).should be(mock_cell_phone)
      end

      it "re-renders the 'new' template" do
        CellPhone.stub(:new) { mock_cell_phone(:save => false) }
        post :create, :cell_phone => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested cell_phone" do
        CellPhone.should_receive(:find).with("37") { mock_cell_phone }
        mock_cell_phone.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cell_phone => {'these' => 'params'}
      end

      it "assigns the requested cell_phone as @cell_phone" do
        CellPhone.stub(:find) { mock_cell_phone(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:cell_phone).should be(mock_cell_phone)
      end

      it "redirects to the cell_phone" do
        CellPhone.stub(:find) { mock_cell_phone(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(cell_phone_url(mock_cell_phone))
      end
    end

    describe "with invalid params" do
      it "assigns the cell_phone as @cell_phone" do
        CellPhone.stub(:find) { mock_cell_phone(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:cell_phone).should be(mock_cell_phone)
      end

      it "re-renders the 'edit' template" do
        CellPhone.stub(:find) { mock_cell_phone(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested cell_phone" do
      CellPhone.should_receive(:find).with("37") { mock_cell_phone }
      mock_cell_phone.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the cell_phones list" do
      CellPhone.stub(:find) { mock_cell_phone }
      delete :destroy, :id => "1"
      response.should redirect_to(cell_phones_url)
    end
  end

end
