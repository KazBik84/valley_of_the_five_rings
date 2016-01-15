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
        expect(response).to have_http_status(:redirect)
      end
      it 'redirect to root path (aha index)' do
        expect(response).to redirect_to root_path
      end
      it 'will rise flash[:success]' do
        expect(flash[:success]).to be_present
      end
      it 'will create announcement object' do
        expect(Announcement.count). to eq(1)
      end
    end

    context 'with title nil' do
      before(:each) do
        @user = create(:user)
        sign_in @user
        post :create, announcement: attributes_for(:announcement, title: nil)
      end
      it 'will have status 2XX' do
        expect(response).to have_http_status(:success)
      end
      it 'render new template' do
        expect(response).to render_template :new
      end
      it 'won`t create db record' do
        expect(Announcement.count).to eq(0)
      end
    end

    context 'with message nil' do
      before(:each) do
        @user = create(:user)
        sign_in @user
        post :create, announcement: attributes_for(:announcement, message: nil)
      end
      it 'will have status 2XX' do
        expect(response).to have_http_status(:success)
      end
      it 'render new template' do
        expect(response).to render_template :new
      end
      it 'won`t create db record' do
        expect(Announcement.count).to eq(0)
      end
    end
  end

  describe 'GET #Edit' do
    let(:dummy_post) do
      create(:announcement)
    end
    before(:each) do
      @user = create(:user)
      sign_in @user
      get :edit, id: dummy_post.id
    end
    it 'should have success status' do
      expect(response).to have_http_status(:success)
    end
    it 'should render edit template' do
      expect(response).to render_template :edit
    end
    it 'assigns announcement variable correct' do
      expect(assigns(:announcement)).to eq(dummy_post)
    end
  end
  describe 'POST #update' do
    let(:dummy_post) do
      create(:announcement)
    end
    context 'update with valid attributes' do
      let(:attributes) do
        { title: 'new title', message: 'new message' }
      end
      before(:each) do
        @user = create(:user)
        sign_in @user
        put :update, id: dummy_post.id, announcement: attributes
      end
      it 'should have status redirect' do
        expect(response).to have_http_status :redirect
      end
      it 'should redirect to root path' do
        expect(response).to redirect_to root_path
      end
      it 'should have flash message' do
        expect(flash[:success]).to be_present
      end
      it 'should update the title' do
        dummy_post.reload
        expect(dummy_post.title).to eq('new title')
      end
      it 'should update message' do
        dummy_post.reload
        expect(dummy_post.message).to eq 'new message'
      end
    end

    context 'update with blank title' do
      let(:attributes) do
        { title: nil, message: 'new message' }
      end
      before(:each) do
        @user = create(:user)
        sign_in @user
        put :update, id: dummy_post.id, announcement: attributes
      end
      it 'should have status success' do
        expect(response).to have_http_status :success
      end
      it 'should render edit template' do
        expect(response).to render_template :edit
      end
      it 'should not update the title' do
        dummy_post.reload
        expect(dummy_post.title).to_not eq('new title')
      end
      it 'should not update message' do
        dummy_post.reload
        expect(dummy_post.message).to_not eq 'new message'
      end
    end
    context 'update with blank message' do
      let(:attributes) do
        { title: 'new title', message: nil }
      end
      before(:each) do
        @user = create(:user)
        sign_in @user
        put :update, id: dummy_post.id, announcement: attributes
      end
      it 'should have status success' do
        expect(response).to have_http_status :success
      end
      it 'should render edit template' do
        expect(response).to render_template :edit
      end
      it 'should not update the title' do
        dummy_post.reload
        expect(dummy_post.title).to_not eq('new title')
      end
      it 'should not update message' do
        dummy_post.reload
        expect(dummy_post.message).to_not eq 'new message'
      end
    end
  end

  describe 'DELETE destroy' do
    let(:dummy_post) do
      create(:announcement)
    end
    before(:each) do
      @user = create(:user)
      sign_in @user
      delete :destroy, id: dummy_post.id
    end
    it 'returns redirect status' do
      expect(response).to have_http_status :redirect
    end
    it 'redirects to root path' do
      expect(response).to redirect_to root_path
    end
    it 'have flash success' do
      expect(flash[:success]).to be_present
    end
    it 'destroys an announcement' do
      expect(Announcement.count).to eq(0)
    end
  end

  describe 'Get show' do
    let(:dummy_post) do
      create(:announcement)
    end
    before(:each) do
      @user = create(:user)
      sign_in @user
      get :show, id: dummy_post.id
    end
    it 'should have success status' do
      expect(response).to have_http_status :success
    end
    it 'should render show template' do
      expect(response).to render_template :show
    end
  end
end
