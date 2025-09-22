class AddAdminToLikes < ActiveRecord::Migration[8.0]
  def change
    add_reference :likes, :admin, null: false, foreign_key: true
    add_index :likes, [:post_id, :admin_id], unique: true
  end
end
