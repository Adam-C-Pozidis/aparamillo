class ShelvesController < ApplicationController

  def index
    @shelves = policy_scope(Shelf.where(shop_id: current_user.shop_id))
  end
  
  def new
    @shelf = Shelf.new
    authorize(@shelf)
  end

  def create
    @shelf = Shelf.new(shelf_params)
    authorize(@shelf)
    @shelf.shop = Shop.find_by user_id: current_user.id
    if @shelf.save!
      redirect_to managment_main_path
    else
      render "shelves/new"
    end
  end

  def update
    @shelf = Shelf.find(params[:id])
    authorize(@shelf)
    @shelf.update(shelf_params)
    redirect_to managment_main_path
  end

  private

  def shelf_params
    params.require(:shelf).permit(:name)
  end
end
