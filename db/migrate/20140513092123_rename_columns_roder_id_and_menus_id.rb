class RenameColumnsRoderIdAndMenusId < ActiveRecord::Migration
  def change
    rename_column :menus_orders, :menus_id, :menu_id
    rename_column :menus_orders, :orders_id, :order_id
    add_index :menus_orders, :menu_id
    add_index :menus_orders, :order_id
  end
end
