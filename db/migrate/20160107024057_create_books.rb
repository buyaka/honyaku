class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.string :lang

      t.timestamps null: false
    end
  end
end
