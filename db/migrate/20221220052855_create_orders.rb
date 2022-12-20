class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.text :username
      t.integer :phone_number
      t.string :region
      t.string :city
      t.text :delivery_address
      t.integer :restaurant_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
