class CreateClans < ActiveRecord::Migration
  def change
    create_table :clans do |t|
      # describe the clan
      t.string :desc
      # name is an version of name used in the code
      t.string :name
      # clan_name is name used in the views
      t.string :clan_name
      t.string :mon_img
      # anything special info about the clan will be included here 
      t.string :special

      t.timestamps null: false
    end
  end
end
