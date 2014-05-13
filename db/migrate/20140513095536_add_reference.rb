class AddReference < ActiveRecord::Migration
  def change
    rename_column :dishes_menus, :dishe_id, :dish_id
    add_index :dishes_menus, :dish_id
    add_index :dishes_menus, :menu_id
  end
end
