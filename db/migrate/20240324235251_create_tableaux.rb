class CreateTableaux < ActiveRecord::Migration[7.1]
  def change
    create_table :tableauxes do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
