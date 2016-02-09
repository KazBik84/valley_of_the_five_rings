class Comment < ActiveRecord::Base
  belongs_to :comment_owner, polymorphic: true
  belongs_to :user

  validates_presence_of :content, :user_id

end
