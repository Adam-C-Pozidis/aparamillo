class ClothsController < ApplicationController
  before_action :set_cloth, except: %i[index new create]

  def index
    if current_user.owner?
      @cloths = policy_scope(Cloth.all)
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
    @cloth.update(cloth_params)
  end

  def destroy
    @cloth.destroy
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
