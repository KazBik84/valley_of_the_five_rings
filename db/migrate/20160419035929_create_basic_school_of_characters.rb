class CreateBasicSchoolOfCharacters < ActiveRecord::Migration
  def change
    create_table :basic_school_of_characters do |t|
      t.references :character, index: true, foreign_key: true
      t.references :basic_school, index: true, foreign_key: true      
      t.timestamps null: false
    end
  end
end
