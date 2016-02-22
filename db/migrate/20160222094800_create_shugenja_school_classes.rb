class CreateShugenjaSchoolClasses < ActiveRecord::Migration
  def change
    create_table :shugenja_school_classes do |t|
      t.references :school_class, index: true, foreign_key: true
      t.references :basic_shugenja_school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
