# This Model will kontain types of classes that school can have
class SchoolClass < ActiveRecord::Base
  has_many :class_of_schools, dependent: :destroy

  validates_inclusion_of :name, in: SCHOOL_CLASSES
  validates_presence_of :name

  def associated_classes_of_schools
    ClassOfSchool.all.where(school_class_id: id)
  end
end
