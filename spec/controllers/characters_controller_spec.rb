require 'rails_helper'

RSpec.describe CharactersController, type: :controller do

  describe 'GET #index' do
    before :each do
      @user = FactoryGirl.create(:user)
      get :index, user_id: @user.id
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    before :each do
      @user = FactoryGirl.create(:user)
      @character = FactoryGirl.create :character, user_id: @user.id
      get :show, user_id: @user.id, id: @character.id
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    before :each do
      @user = FactoryGirl.create :user
      @clan = FactoryGirl.create :clan
      @school = FactoryGirl.create :basic_school, clan_id: @clan.id
      sign_in @user        
    end
    it 'returns http success' do
      get :new, user_id: @user.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #create' do
    before :each do
      @user = FactoryGirl.create(:user)
      sign_in @user      
    end
    it 'returns http success' do
      post :create, user_id: @user.id, charcter: attributes_for(:character)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #update' do
    before :each do
      @user = FactoryGirl.create(:user)
    end
    it 'returns http success' do
      get :update, user_id: @user.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #edit' do
    before :each do
      @user = FactoryGirl.create(:user)
    end
    it "returns http success" do
      get :edit, user_id: @user.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    before :each do
      @user = FactoryGirl.create(:user)
    end
    it "returns http success" do
      get :destroy, user_id: @user.id
      expect(response).to have_http_status(:success)
    end
  end

end
