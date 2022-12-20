class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.text :username
      t.text :email
      t.text :password
      t.text :password_confirmation

      t.timestamps
    end
  end
end
