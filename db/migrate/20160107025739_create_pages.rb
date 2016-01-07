class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :book_id
      t.integer :pagenumber
      t.string :image
      t.text :content

      t.timestamps null: false
    end
  end
end
