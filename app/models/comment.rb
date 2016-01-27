class Comment < ActiveRecord::Base
  belongs_to :comment_owner, polymorphic: true

  validates_presence_of :content, :user_id
  
end
