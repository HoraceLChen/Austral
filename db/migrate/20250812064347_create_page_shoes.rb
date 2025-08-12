class CreatePageShoes < ActiveRecord::Migration[7.1]
  def change
    create_table :page_shoes do |t|
      t.references :page, null: false, foreign_key: true
      t.references :shoe, null: false, foreign_key: true

      t.timestamps
    end

    add_index :page_shoes, [:page_id, :shoe_id], unique: true
  end
end
