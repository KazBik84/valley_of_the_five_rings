class KindOfTrait < ActiveRecord::Base
  belongs_to :trait
  belongs_to :trait_kind

  validates_presence_of :trait_id, :trait_kind_id
end
