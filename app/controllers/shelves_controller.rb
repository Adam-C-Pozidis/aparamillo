class ShelvesController < ApplicationController

  def create
    @shelf = Shelf.new(self_params)
    authorize(@shelf)
    if @shelf.save
      redirect_to managments_path
    else
      render "managments/show"
    end
  end

  def update
    @shelf = Shelf.find(params[:id])
    authorize(@shelf)
    @shelf.update(shelf_params)
    redirect_to managments_path
  end

  private

  def self_params
    params.require(:shelf).permit(:name)
  end
end
