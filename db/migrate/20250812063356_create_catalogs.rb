class CreateCatalogs < ActiveRecord::Migration[7.1]
  def change
    create_table :catalogs do |t|
      t.string :title
      t.integer :year
      t.string :season

      t.timestamps
    end
  end
end
