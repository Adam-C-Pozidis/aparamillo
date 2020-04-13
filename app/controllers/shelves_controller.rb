class ShelvesController < ApplicationController

  def new
    @shelf = Shelf.new
    authorize(@shelf)
  end

  def create
    @shelf = Shelf.new(shelf_params)
    authorize(@shelf)
    if @shelf.save
      redirect_to managments_path
    else
      render "managments/main"
    end
  end

  def update
    @shelf = Shelf.find(params[:id])
    authorize(@shelf)
    @shelf.update(shelf_params)
    redirect_to managments_path
  end

  private

  def shelf_params
    params.require(:shelf).permit(:name)
  end
end
