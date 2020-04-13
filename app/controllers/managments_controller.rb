class ManagmentsController < ApplicationController

  def shop
    @shelves = Shelf.all
    authorize(@shelves)
    @types = Type.all
    authorize(@types)
    @colors = Color.all
    authorize(@colors)
  end

  def main
    authorize :managment, :main?
  end
end
