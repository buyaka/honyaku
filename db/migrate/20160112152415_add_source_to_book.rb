class AddSourceToBook < ActiveRecord::Migration
  def change
    add_column :books, :source, :string
  end
end
