class CreateCommandes < ActiveRecord::Migration[7.1]
  def change
    create_table :commandes do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
