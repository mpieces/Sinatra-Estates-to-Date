class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string   :company_name
      t.string   :owner_name
      t.string   :company_url
      t.string   :phone_number

      t.timestamps
     end
  end
end
