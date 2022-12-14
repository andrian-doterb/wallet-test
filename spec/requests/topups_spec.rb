require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/topups", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Topup. As you add validations to Topup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Topup.create! valid_attributes
      get topups_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      topup = Topup.create! valid_attributes
      get topup_url(topup)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_topup_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      topup = Topup.create! valid_attributes
      get edit_topup_url(topup)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Topup" do
        expect {
          post topups_url, params: { topup: valid_attributes }
        }.to change(Topup, :count).by(1)
      end

      it "redirects to the created topup" do
        post topups_url, params: { topup: valid_attributes }
        expect(response).to redirect_to(topup_url(Topup.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Topup" do
        expect {
          post topups_url, params: { topup: invalid_attributes }
        }.to change(Topup, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post topups_url, params: { topup: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested topup" do
        topup = Topup.create! valid_attributes
        patch topup_url(topup), params: { topup: new_attributes }
        topup.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the topup" do
        topup = Topup.create! valid_attributes
        patch topup_url(topup), params: { topup: new_attributes }
        topup.reload
        expect(response).to redirect_to(topup_url(topup))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        topup = Topup.create! valid_attributes
        patch topup_url(topup), params: { topup: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested topup" do
      topup = Topup.create! valid_attributes
      expect {
        delete topup_url(topup)
      }.to change(Topup, :count).by(-1)
    end

    it "redirects to the topups list" do
      topup = Topup.create! valid_attributes
      delete topup_url(topup)
      expect(response).to redirect_to(topups_url)
    end
  end
end
