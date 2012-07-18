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

describe JcCommentsController do

  # This should return the minimal set of attributes required to create a valid
  # JcComment. As you add validations to JcComment, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all jc_comments as @jc_comments" do
      jc_comment = JcComment.create! valid_attributes
      get :index
      assigns(:jc_comments).should eq([jc_comment])
    end
  end

  describe "GET show" do
    it "assigns the requested jc_comment as @jc_comment" do
      jc_comment = JcComment.create! valid_attributes
      get :show, :id => jc_comment.id
      assigns(:jc_comment).should eq(jc_comment)
    end
  end

  describe "GET new" do
    it "assigns a new jc_comment as @jc_comment" do
      get :new
      assigns(:jc_comment).should be_a_new(JcComment)
    end
  end

  describe "GET edit" do
    it "assigns the requested jc_comment as @jc_comment" do
      jc_comment = JcComment.create! valid_attributes
      get :edit, :id => jc_comment.id
      assigns(:jc_comment).should eq(jc_comment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JcComment" do
        expect {
          post :create, :jc_comment => valid_attributes
        }.to change(JcComment, :count).by(1)
      end

      it "assigns a newly created jc_comment as @jc_comment" do
        post :create, :jc_comment => valid_attributes
        assigns(:jc_comment).should be_a(JcComment)
        assigns(:jc_comment).should be_persisted
      end

      it "redirects to the created jc_comment" do
        post :create, :jc_comment => valid_attributes
        response.should redirect_to(JcComment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved jc_comment as @jc_comment" do
        # Trigger the behavior that occurs when invalid params are submitted
        JcComment.any_instance.stub(:save).and_return(false)
        post :create, :jc_comment => {}
        assigns(:jc_comment).should be_a_new(JcComment)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JcComment.any_instance.stub(:save).and_return(false)
        post :create, :jc_comment => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested jc_comment" do
        jc_comment = JcComment.create! valid_attributes
        # Assuming there are no other jc_comments in the database, this
        # specifies that the JcComment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JcComment.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => jc_comment.id, :jc_comment => {'these' => 'params'}
      end

      it "assigns the requested jc_comment as @jc_comment" do
        jc_comment = JcComment.create! valid_attributes
        put :update, :id => jc_comment.id, :jc_comment => valid_attributes
        assigns(:jc_comment).should eq(jc_comment)
      end

      it "redirects to the jc_comment" do
        jc_comment = JcComment.create! valid_attributes
        put :update, :id => jc_comment.id, :jc_comment => valid_attributes
        response.should redirect_to(jc_comment)
      end
    end

    describe "with invalid params" do
      it "assigns the jc_comment as @jc_comment" do
        jc_comment = JcComment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JcComment.any_instance.stub(:save).and_return(false)
        put :update, :id => jc_comment.id, :jc_comment => {}
        assigns(:jc_comment).should eq(jc_comment)
      end

      it "re-renders the 'edit' template" do
        jc_comment = JcComment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JcComment.any_instance.stub(:save).and_return(false)
        put :update, :id => jc_comment.id, :jc_comment => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested jc_comment" do
      jc_comment = JcComment.create! valid_attributes
      expect {
        delete :destroy, :id => jc_comment.id
      }.to change(JcComment, :count).by(-1)
    end

    it "redirects to the jc_comments list" do
      jc_comment = JcComment.create! valid_attributes
      delete :destroy, :id => jc_comment.id
      response.should redirect_to(jc_comments_url)
    end
  end

end
