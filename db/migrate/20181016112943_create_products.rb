class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.boolean :available
      t.timestamp :release_year
      t.integer :brand_id

      t.timestamps
    end
  end
end
