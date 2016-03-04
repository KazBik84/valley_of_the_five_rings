class CreateKindOfTraits < ActiveRecord::Migration
  def change
    create_table :kind_of_traits do |t|
      t.references :trait, index: true, foreign_key: true
      t.references :trait_kind, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
