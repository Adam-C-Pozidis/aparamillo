class ManagmentsController < ApplicationController

  def main
    authorize :managment, :main?
    # @shop = Shop.find_by user_id: current_user.id
  end
end
