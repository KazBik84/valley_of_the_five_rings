class SchoolRank < ActiveRecord::Base
  belongs_to :school_technic, polymorphic: true
end
