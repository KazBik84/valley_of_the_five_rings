class SchoolClass < ActiveRecord::Base
  has_many :class_of_schools, as: :school_model, dependent: :destroy
  has_many :basic_primary_schools, through: :class_of_schools 
  has_many :basic_shugenja_schools, through: :class_of_schools
  has_many :basic_monk_schools, through: :class_of_schools

  validates_inclusion_of :name, in: SCHOOL_CLASSES
  validates_presence_of :name

  def associated_classes_of_schools
    ClassOfSchool.all.where(school_class_id: id)
  end
end
