class Trait < ActiveRecord::Base
  belongs_to :trait_kind
  belongs_to :sphere_of_traits
end
