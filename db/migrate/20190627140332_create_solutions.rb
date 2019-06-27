class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.string :content
      t.integer :staff_id
      t.integer :post_id

      t.timestamps
    end
  end
end
