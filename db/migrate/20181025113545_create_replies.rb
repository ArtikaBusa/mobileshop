class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.references :comment, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
