class AddInsightToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :insight, :integer
  end
end
