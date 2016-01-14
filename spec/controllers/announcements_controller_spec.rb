require 'rails_helper'

RSpec.describe AnnouncementsController, type: :controller do

  describe 'Get #new' do
    context 'user not logged in' do
      before(:each) do
        get :new
      end
      it 'returns status redirect' do
        expect(response).to have_http_status(:redirect)
      end
      it 'redirects to root path' do
        expect(response).to redirect_to new_user_session_path
      end
    end

    context 'user log in' do
      before(:each) do
        @user = create(:user)
        sign_in @user
        get :new
      end
      it 'returns success http status' do
        expect(response).to have_http_status(:success)
      end
      it 'render proper view' do
        expect(response).to render_template 'new'
      end
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      before(:each) do
        @user = create(:user)
        sign_in @user
        post :create, announcement: attributes_for(:announcement)
      end
      it 'return http redirect status' do
        expect(response).to have_http_status(:success)
      end
      it 'redirect to root path (aha index)' do
        expect(response).to redirect_to root_path
      end
      it 'will rise flashp[:success]' do
        expect(flashp[:success]).to be_present
      end
      it 'will create announcement object' do
        expect(announcement.count). to eq(1)
      end
    end
  end
end
