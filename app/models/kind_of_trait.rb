class KindOfTrait < ActiveRecord::Base
  belongs_to :trait
  belongs_to :trait_kind
end
