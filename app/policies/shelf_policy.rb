class ShelfPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.user_owner?
  end

  # def index?
  #   record.user == user
  # end

  def shop?
    new?
  end

  def create?
    new?
  end
end
