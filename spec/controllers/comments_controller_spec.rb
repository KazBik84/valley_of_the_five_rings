require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  roles_able_to_create_comments = [0, 1, 2]
  roles_able_to_destory_comments = [1, 2]

  describe 'User not logged in' do
    let(:dummy_post) do
      create(:announcement)
    end
    before :each do
      post :create, announcement_id: dummy_post.id,
                    comment: attributes_for(:comment)
    end
    it 'return redirect http status' do
      expect(response).to have_http_status(:redirect)
    end

    it 'redirect to the log in page' do
      expect(response).to redirect_to new_user_session_path
    end
  end

  describe 'POST :create' do
    let(:dummy_post) do
      create(:announcement)
    end
    roles_able_to_create_comments.each do |role_id|
      context 'authorized user create comment with valid attributes' do
        before :each do
          @user = create(:user, role: role_id)
          sign_in @user
          post :create, comment: attributes_for(:comment, user_id: @user.id),
                        announcement_id: dummy_post.id
        end

        it 'returns http status redirect' do
          expect(response).to have_http_status(:redirect)
        end
        it 'redirects to the given url' do
          expect(response).to redirect_to(root_path)
        end
        it 'will create a comment in the db' do
          expect(Comment.count).to eq(1)
        end
      end
      context 'With nil content' do
        before :each do
          @user = create(:user, role: role_id)
          sign_in @user
          post :create, comment: attributes_for(:comment, content: nil, user_id: @user.id),
                        announcement_id: dummy_post.id

        end

        it 'returns http status success' do
          expect(response).to have_http_status(:success)
        end
        it 'renders index announcement view' do
          expect(response).to render_template 'announcements/index'
        end
        it 'does not create Comment' do
          expect(Comment.count).to eq(0)
        end
      end
    end
  end

  describe 'DELETE destroy' do
    let(:dummy_post) do
      create(:announcement)
    end

    let(:dummy_comment) do
      create(:comment, comment_owner_id: dummy_post.id,
                       comment_owner_type: dummy_post.class.name)
    end

    before :each do
      @user = create(:user)
      sign_in @user
      delete :destroy, id: dummy_comment.id, announcement_id: dummy_post.id
    end

    it 'returns http status redirect' do
      expect(response).to have_http_status(:redirect)
    end
    it 'redirect to root path' do
      expect(response).to redirect_to root_path
    end
    it 'should delete comment' do
      expect(Comment.count).to eq(0)
    end
  end
end
