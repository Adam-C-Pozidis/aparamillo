class ClothsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @cloths = Cloth.where("user_id == #{current_user.id}")
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
end
