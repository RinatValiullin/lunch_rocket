class Order < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :menus
  # def menus
  #   query = "SELECT * FROM menus INNER JOIN menus_orders ON menus.id = menus_orders.menu_id WHERE menus_orders.order_id = 101"
  #   data = ActiveRecord::Base.connection.execute query
  #   data[0]
  # end
end
