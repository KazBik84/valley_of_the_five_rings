class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :comment_owner_id
      t.string :comment_owner_type

      t.timestamps null: false
    end
  end
end
