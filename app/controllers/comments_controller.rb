# This is the controller responsible for the comments actions.
class CommentsController < ApplicationController
  before_filter :find_comment_owner

  def new
  end

  def create
    @comment_owner = find_comment_owner
    puts " comment owner: #{@comment_owner}"
    @comment = @comment_owner.comments.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end

  def find_comment_owner
    # Switch comment_owner_string into constant
    owner_options = ['announcement_id']
    params.each do |name, value|
      if owner_options.include? name
        klass = name.dup
        klass.slice!(/_id/)
        puts klass
        return klass.classify.constantize.find(value)
      end
    end
  end
end
