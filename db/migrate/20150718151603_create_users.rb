class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :username, :null => false
      t.string   :password_hash
      t.string   :email, :null => false
      t.boolean  :lister, :default => false
      t.boolean  :shopper, :default => false

      t.timestamps
    end
  end
end
