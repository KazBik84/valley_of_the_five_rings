class CreateMonkSchoolClasses < ActiveRecord::Migration
  def change
    create_table :monk_school_classes do |t|
      t.references :school_class, index: true, foreign_key: true
      t.references :basic_monk_school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
