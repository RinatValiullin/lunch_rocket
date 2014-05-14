class MenuController < ApplicationController

def index
  @menus = Menu.paginate(:page => params[:page], per_page: 4)
end

end
