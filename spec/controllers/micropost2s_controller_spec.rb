require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Micropost2sController do

  # This should return the minimal set of attributes required to create a valid
  # Micropost2. As you add validations to Micropost2, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Micropost2sController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all micropost2s as @micropost2s" do
      micropost2 = Micropost2.create! valid_attributes
      get :index, {}, valid_session
      assigns(:micropost2s).should eq([micropost2])
    end
  end

  describe "GET show" do
    it "assigns the requested micropost2 as @micropost2" do
      micropost2 = Micropost2.create! valid_attributes
      get :show, {:id => micropost2.to_param}, valid_session
      assigns(:micropost2).should eq(micropost2)
    end
  end

  describe "GET new" do
    it "assigns a new micropost2 as @micropost2" do
      get :new, {}, valid_session
      assigns(:micropost2).should be_a_new(Micropost2)
    end
  end

  describe "GET edit" do
    it "assigns the requested micropost2 as @micropost2" do
      micropost2 = Micropost2.create! valid_attributes
      get :edit, {:id => micropost2.to_param}, valid_session
      assigns(:micropost2).should eq(micropost2)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Micropost2" do
        expect {
          post :create, {:micropost2 => valid_attributes}, valid_session
        }.to change(Micropost2, :count).by(1)
      end

      it "assigns a newly created micropost2 as @micropost2" do
        post :create, {:micropost2 => valid_attributes}, valid_session
        assigns(:micropost2).should be_a(Micropost2)
        assigns(:micropost2).should be_persisted
      end

      it "redirects to the created micropost2" do
        post :create, {:micropost2 => valid_attributes}, valid_session
        response.should redirect_to(Micropost2.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved micropost2 as @micropost2" do
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost2.any_instance.stub(:save).and_return(false)
        post :create, {:micropost2 => {}}, valid_session
        assigns(:micropost2).should be_a_new(Micropost2)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost2.any_instance.stub(:save).and_return(false)
        post :create, {:micropost2 => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested micropost2" do
        micropost2 = Micropost2.create! valid_attributes
        # Assuming there are no other micropost2s in the database, this
        # specifies that the Micropost2 created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Micropost2.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => micropost2.to_param, :micropost2 => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested micropost2 as @micropost2" do
        micropost2 = Micropost2.create! valid_attributes
        put :update, {:id => micropost2.to_param, :micropost2 => valid_attributes}, valid_session
        assigns(:micropost2).should eq(micropost2)
      end

      it "redirects to the micropost2" do
        micropost2 = Micropost2.create! valid_attributes
        put :update, {:id => micropost2.to_param, :micropost2 => valid_attributes}, valid_session
        response.should redirect_to(micropost2)
      end
    end

    describe "with invalid params" do
      it "assigns the micropost2 as @micropost2" do
        micropost2 = Micropost2.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost2.any_instance.stub(:save).and_return(false)
        put :update, {:id => micropost2.to_param, :micropost2 => {}}, valid_session
        assigns(:micropost2).should eq(micropost2)
      end

      it "re-renders the 'edit' template" do
        micropost2 = Micropost2.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost2.any_instance.stub(:save).and_return(false)
        put :update, {:id => micropost2.to_param, :micropost2 => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested micropost2" do
      micropost2 = Micropost2.create! valid_attributes
      expect {
        delete :destroy, {:id => micropost2.to_param}, valid_session
      }.to change(Micropost2, :count).by(-1)
    end

    it "redirects to the micropost2s list" do
      micropost2 = Micropost2.create! valid_attributes
      delete :destroy, {:id => micropost2.to_param}, valid_session
      response.should redirect_to(micropost2s_url)
    end
  end

end
