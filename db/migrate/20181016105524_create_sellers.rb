class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.string :contactno, limit: 15
      t.string :address, limit: 500

      t.timestamps
    end
  end
end
