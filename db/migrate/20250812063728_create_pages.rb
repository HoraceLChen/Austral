class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages do |t|
      t.integer :page_number, null: false
      t.references :catalog, null: false, foreign_key: true

      t.timestamps
    end

    add_index :pages, [:catalog_id, :page_number], unique: true
  end
end
