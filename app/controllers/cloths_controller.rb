class ClothsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :index
  before_action :set_cloth, except: %i[index new create]

  def index
    @cloths = policy_scope(Cloth.where(user_id: current_user.id))
  end

  def show
  end

  def new
  end

  def create
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
    params.require(:cloth).permit(:category, :wash_type, :price, :pick_up_date)
  end
end
