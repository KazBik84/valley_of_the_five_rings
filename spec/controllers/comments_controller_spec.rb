require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'User not logged in' do
    let(:dummy_post) do
      create(:announcement)
    end
    before :each do
      get :new, announcement_id: dummy_post.id
    end

    it 'return redirect http status' do
      expect(response).to have_http_status(:success)
    end
  end
end
  