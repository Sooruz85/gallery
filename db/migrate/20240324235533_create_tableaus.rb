class CreateTableaus < ActiveRecord::Migration[7.1]
  def change
    create_table :tableaus do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
