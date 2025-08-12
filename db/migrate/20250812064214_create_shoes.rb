class CreateShoes < ActiveRecord::Migration[7.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.text :description
      t.json :colors
      t.integer :price
      t.json :upper
      t.json :insole
      t.json :lining
      t.text :other

      t.timestamps
    end
  end
end
