class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
