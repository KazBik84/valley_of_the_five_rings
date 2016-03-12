class AddTraitKindAndTraitSphereToTrait < ActiveRecord::Migration
  def change
    add_reference :traits, :trait_kind, index: true, foreign_key: true
    add_reference :traits, :trait_sphere, index: true, foreign_key: true    
  end
end
