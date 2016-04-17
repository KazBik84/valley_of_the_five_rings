class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :clan
  belongs_to :family
end
