class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true, foreign_key: true
      t.references :clan, index: true, foreign_key: true
      t.references :family, index: true, foreign_key: true
      t.string     :name
      t.string     :school_class
      t.string     :honour
      t.string     :outfit
      t.string     :char_look
      t.string     :char_desc
      t.string     :char_character
      t.boolean    :public
      t.integer    :stamina
      t.integer    :willpower
      t.integer    :strength
      t.integer    :perception
      t.integer    :agility
      t.integer    :intelligence
      t.integer    :reflexes
      t.integer    :awareness
      t.integer    :void

      t.timestamps null: false
    end
  end
end
