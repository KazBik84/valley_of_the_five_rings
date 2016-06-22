class AddExpToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :exp, :integer
  end
end
