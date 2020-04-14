class ColorsController < ApplicationController

  def new
    @color = Color.new
    authorize(@color)
  end

  def create
    @color = Color.new(color_params)
    authorize(@color)
    if @color.save
      redirect_to managment_main_path
    else
      render "colors/new"
    end
  end

  def update
    @color = Color.find(params[:id])
    authorize(@color)
    @color.update(color_params)
    redirect_to managments_path
  end

  private

  def color_params
    params.require(:color).permit(:name)
  end
end
