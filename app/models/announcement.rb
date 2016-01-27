class Announcement < ActiveRecord::Base
  has_many :comments, as: :comment_owner

  validates_presence_of :title, :message
end
