class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :clan
  belongs_to :family

  has_many :basic_school_of_characters
  has_many :basic_schools, through: :basic_school_of_characters
end
