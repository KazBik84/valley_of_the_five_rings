require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    before :each do
      @user = FactoryGirl.create(:user)
      sign_in @user
    end    
    it "returns http success" do
      get :show, id: @user.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
