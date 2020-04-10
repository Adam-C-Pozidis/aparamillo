class ColorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.user == user
  end
  
  def shop?
    true
  end

end
