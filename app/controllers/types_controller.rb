class TypesController < ApplicationController

  def new
    @type = Type.new
    authorize(@type)
  end

  def create
    @type = Type.new(type_params)
    authorize(@type)
    if @type.save!
      redirect_to managment_main_path
    else
      render "types/new"
    end
  end

  def update
    @type = Type.find(params[:id])
    authorize(@type)
    @type.update(type_params)
    redirect_to managment_main_path
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end
end
