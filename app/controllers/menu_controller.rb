class MenuController < ApplicationController

def index
  @menus = Menu.all
end

end
