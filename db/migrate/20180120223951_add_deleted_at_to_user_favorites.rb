class AddDeletedAtToUserFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :user_favorites, :deleted_at, :datetime
    add_index :user_favorites, :deleted_at
  end
end
