# User.create(email: '1@1.com', password: '1').add_role(:admin)
# User.create(email: '2@2.com', password: '2').add_role(:manager)
# User.create(email: '3@3.com', password: '3').add_role(:deliver)
# User.create(email: '4@4.com', password: '4').add_role(:user)

json = File.read("./Menu.json")
menus = json.split("}]}")
            number_of_file = 0
  menus.each_with_index do |menu, index_of_menu|
    list_of_dishes = []
    menu_after_parse = JSON.parse("#{menu}}]}")
    menu_name = menu_after_parse.keys[0]
    menu_price = 0
    menu_after_parse.each do |dish, value|
      value.each do |dishes|
        if dishes.keys[0].eql? "Цена"
          menu_price =  dishes.values.to_s.match(/[0-9]*\s+[0-9]*/).to_s.gsub(" ","").to_i
        else
          dishes.keys.each_with_index do |dish, ind|

            number_of_file = index_of_menu*3+ind if ind < 3
            list_of_dishes << Dish.create(name: dish, description: dishes[dish], image: File.open("./image/#{number_of_file}.jpg"))
          end
        end
      end
      menu = Menu.create(price: menu_price, name: menu_name)
      menu.dishes = list_of_dishes
      menu.save
    end
end

# orders = []
# 100.times do
#   order = Order.new
#   order.status = "new"
#   order.deliver_id = 1
#   order.menus = [Menu.first, Menu.last]
#   order.save!
#   orders << order
# end
# User.last.orders = orders