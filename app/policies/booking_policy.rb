class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    def edit?
      true
      # record.flat.user == user
    end

    def update?
      true
      # record.flat.user == user
    end
  end
end
