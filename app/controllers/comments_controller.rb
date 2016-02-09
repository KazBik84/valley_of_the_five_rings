# This is the controller responsible for the comments actions.
class CommentsController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource through: :comment_owner

  def create
    @comment_owner = find_comment_owner_object
    @comment = @comment_owner.comments.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render 'announcements/index'
    end
  end

  def destroy
    @comment_owner = find_comment_owner_object
    @comment = @comment_owner.comments.find(params[:id])
    if @comment.destroy
      redirect_to root_path
    else
      render 'announcements/index'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end

  def find_comment_owner_object
    # Switch comment_owner_string into constant
    owner_options = ['announcement_id']
    params.each do |name, value|
      if owner_options.include? name
        klass = name.dup
        klass.slice!(/_id/)
        return klass.classify.constantize.find(value)
      end
    end
  end
end
