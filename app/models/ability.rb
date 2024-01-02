# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user || = User.new

    can :manage, Group
    can :manage, Category
  end
end
