class ShelfPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.owner?
  end

  def shop?
    new?
  end

  def create?
    new?
  end
end
