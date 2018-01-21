class CreateUserFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :user_favorites do |t|
      t.integer :user_id
      t.integer :favorite_number
      t.timestamps null: false
    end
  end
end
