class SchoolRank < ActiveRecord::Base
  belongs_to :basic_primary_school
  belongs_to :basic_shugenja_school
  belongs_to :basic_monk_school
end
