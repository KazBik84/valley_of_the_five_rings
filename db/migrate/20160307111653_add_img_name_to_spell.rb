class AddImgNameToSpell < ActiveRecord::Migration
  def change
    add_column :spells, :img_name, :string
  end
end
