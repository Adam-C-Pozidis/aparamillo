class ClothPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.user_owner?
  end

  def create?
    new?
  end

  def show?
    user == record.user
  end

end
