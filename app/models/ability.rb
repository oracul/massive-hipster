class Ability
  include CanCan::Ability

  def initialize(user)
   if user.role == "user"
    can :update, :user_id => user.id
   end
  end
end
