class BasicSchoolOfCharacter < ActiveRecord::Base
	belongs_to :character
  belongs_to :basic_school
end
