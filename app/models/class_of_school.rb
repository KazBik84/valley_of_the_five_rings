# Model that joins school_class and schools models, via polymorphic
class ClassOfSchool < ActiveRecord::Base
  belongs_to :school_model, polymorphic: true
  belongs_to :school_class
end
