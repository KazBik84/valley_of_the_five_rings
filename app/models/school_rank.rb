class SchoolRank < ActiveRecord::Base
  belongs_to :school_technic, polymorphic: true

  validates_presence_of :name, :desc, :rank_lvl
end
