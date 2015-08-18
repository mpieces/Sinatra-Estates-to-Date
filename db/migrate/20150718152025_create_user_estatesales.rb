class CreateUserEstatesales < ActiveRecord::Migration
  def change
    create_table :user_estatesales do |t|
      t.integer  :user_id
      t.integer  :estatesale_id
    end
  end
end
