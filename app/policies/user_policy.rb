class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(id: user.id)
      end
    end
  end

  def index?
    user.admin?
  end

  def show?
    user.admin?
  end

  def create?
    true
  end

  def update?

  end

  def authenticate_admin?
    user.admin?
  end
end
