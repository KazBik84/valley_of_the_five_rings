# Model that joins school_class and schools models via polymorphic association
class CreateClassOfSchools < ActiveRecord::Migration
  def change
    create_table :class_of_schools do |t|
      t.integer :school_class_id
      t.integer :school_model_id
      t.string :school_model_type

      t.timestamps null: false
    end
  end
end
