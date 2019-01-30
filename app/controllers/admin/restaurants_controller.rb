class Admin::RestaurantsController < ApplicationController
  #authenticate_user! 查驗使用者是否登入
  before_action :authenticate_user!
  
  #authenticate_admin 查驗使用者是否為管理者(admin)
  before_action :authenticate_admin
  

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    
  end
  

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = Restaurant.new(restaurant_permit)

    if @restaurant.save
      flash[:notice] = "restaurant was successfully created"
      redirect_to(admin_restaurants_path)
    else
      flash.now[:alert] = "restaurant was failed to create"
      render(template: new_admin_restaurant_path)
    end
  end

  def edit
    
  end

  def update
    if @restaurant.update(restaurant_permit)
      flash[:notice] = "restaurant was successfully updated"
      redirect_to(admin_restaurant_path(id: @restaurant.id))
    else
      flash.now[:alert] = "restaurant was failed to update"
      render(template: edit_admin_restaurant_path)
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to admin_restaurants_path
    flash[:alert] = "restaurant was deleted"
  end

  

  
  
  private

  def restaurant_permit
    return params.require(:restaurant).permit([:name, :opening_hours, :tel, :address, :description, :image])
  end

  def set_restaurant
    return @restaurant=Restaurant.find_by(id: params[:id])
  end
  

end