class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.text :name
      t.text :description
      t.integer :price
      t.string :category
      t.text :img_url

      t.timestamps
    end
  end
end
