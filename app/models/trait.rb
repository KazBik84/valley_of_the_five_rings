class Trait < ActiveRecord::Base
  belongs_to :trait_kind
  belongs_to :trait_sphere

  validates_presence_of :name, :name_pl, :desc, :trait_kind_id, :trait_sphere_id
end
