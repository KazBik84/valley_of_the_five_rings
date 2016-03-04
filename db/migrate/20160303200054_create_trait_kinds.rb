class CreateTraitKinds < ActiveRecord::Migration
  def change
    create_table :trait_kinds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
