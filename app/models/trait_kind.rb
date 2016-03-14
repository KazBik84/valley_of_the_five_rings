class TraitKind < ActiveRecord::Base
  has_many :traits

  validates_presence_of :name
end
