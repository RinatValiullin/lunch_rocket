class DeleteIngridientsAndTypeColumns < ActiveRecord::Migration
  def change
    remove_column :dishes, :ingridients
    remove_column :dishes, :type
  end
end
