class ClothsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :index
  before_action :set_cloth, except: %i[index new create]

  def index
    raise
    if current_user.user_owner?
      @cloths = policy_scope(Cloth.joins(:user).where(shops: {user_id: current_user.id}))
    else
      @cloths = policy_scope(Cloth.where("user_id = ?", current_user.id))
    end
  end

  def show
    authorize(@cloth)
  end

  def new
    @cloth = Cloth.new
    authorize(@cloth)
  end

  def create
    @cloth = Cloth.new(cloth_params)
    authorize(@cloth)
    @cloth.user = current_user
    @cloth.save!
    redirect_to cloth_path(@cloth)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_cloth
    @cloth = Cloth.find(params[:id])
  end

  def cloth_params
    params.require(:cloth).permit(:type_id, :color_id, :shelf_id, :category,
    :wash_type, :delivery, :completed, :pick_up_date, :price)
  end
end
