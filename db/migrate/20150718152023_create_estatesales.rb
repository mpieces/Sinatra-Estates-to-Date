class CreateEstatesales < ActiveRecord::Migration
  def change
    create_table :estatesales do |t|
      t.string   :title
      t.text     :address, :null => false
      t.text     :city, :null => false
      t.text     :state, :null => false
      t.integer  :zip_code, :null => false
      t.text     :start_date, :null => false
      t.text     :end_date, :null => false
      t.text     :times, :null => false
      t.text     :description, :null => false
      t.text     :forms_of_payment
      t.text     :special_inst
      t.string   :img_url

      t.integer  :company_id

      t.timestamps :null => false
    end
  end
end
