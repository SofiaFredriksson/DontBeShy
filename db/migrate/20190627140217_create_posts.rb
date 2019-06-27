class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :staff_id
      t.string :category

      t.timestamps
    end
  end
end
