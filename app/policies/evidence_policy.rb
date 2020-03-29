class EvidencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.role.present?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
