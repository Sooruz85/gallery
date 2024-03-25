class CreatePanierItems < ActiveRecord::Migration[7.1]
  def change
    create_table :panier_items do |t|
      t.references :panier, null: false, foreign_key: true
      t.references :tableau, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
