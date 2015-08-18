class MenusController < ApplicationController
  def show
    @business = Business.find params[:business_id]
    @menu = Menu.find params[:id]
  end
end
