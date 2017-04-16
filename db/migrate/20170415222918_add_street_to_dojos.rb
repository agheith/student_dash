class AddStreetToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :street, :string
  end
end
