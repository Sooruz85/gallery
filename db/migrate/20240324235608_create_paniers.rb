class CreatePaniers < ActiveRecord::Migration[7.1]
  def change
    create_table :paniers do |t|

      t.timestamps
    end
  end
end
