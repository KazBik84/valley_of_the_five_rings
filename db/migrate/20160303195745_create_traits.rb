class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name
      t.string :name_pl
      t.string :value
      t.string :desc

      t.timestamps null: false
    end
  end
end
