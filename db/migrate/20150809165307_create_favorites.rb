class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :estatesale_id
      t.text :notes

      # t.timestamps
    end
  end
end
