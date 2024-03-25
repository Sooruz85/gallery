class CreateCommandeItems < ActiveRecord::Migration[7.1]
  def change
    create_table :commande_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :tableau, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
