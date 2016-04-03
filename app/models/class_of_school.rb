class ClassOfSchool < ActiveRecord::Base
  belongs_to :school_model, polymorphic: true
  belongs_to :school_class
end
