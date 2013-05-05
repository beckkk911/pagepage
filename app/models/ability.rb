class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  

    # Guest users
    can :create, User

  

    # Admins
    if user.admin?
      can :manage, :all
    end
  end
end