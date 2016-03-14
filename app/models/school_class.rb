class SchoolClass < ActiveRecord::Base
  has_many :primary_school_classes, dependent: :destroy
  has_many :basic_primary_schools, through: :primary_school_classes

  has_many :shugenja_school_classes, dependent: :destroy
  has_many :basic_shugenja_schools, through: :shugenja_school_classes

  has_many :monk_school_classes, dependent: :destroy
  has_many :basic_monk_schools, through: :monk_school_classes

  validates_inclusion_of :name, in: SCHOOL_CLASSES
  validates_presence_of :name
end
