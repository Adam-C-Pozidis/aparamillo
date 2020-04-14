class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show edit update]

  def index
    @shops = policy_scope(Shop.where(user_id: current_user.id))
  end

  def show
    authorize(@shop)
  end

  def new
    @shop = Shop.new
    authorize(@shop)
  end

  def create
    @shop = Shop.new(shop_params)
    authorize(@shop)
    @shop.user = current_user
    if @shop.save
      redirect_to shop_path(@shop)
    else
      render 'shops/new'
    end
  end

  def edit
    authorize(@shop)
  end

  def update
    authorize(@shop)
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      redirect_to shop_path(@shop)
    end
  end

  private

  def set_shop
    @shop = Shop.find_by user_id: current_user.id
  end

  def shop_params
    params.require(:shop).permit(:name, :address, :phone)
  end
end
