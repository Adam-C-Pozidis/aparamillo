class ShopPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.user_owner?
  end

  def new?
    show?
  end

  def create?
    show?
  end

  def edit?
    show?
  end

  def update?
    show?
  end
end
