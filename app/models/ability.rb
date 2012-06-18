class Ability
  include CanCan::Ability

  def initialize(actor)
    actor ||= Actor.new
    
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
    
    if actor[:is_manager]
      can :manage, :all
    end
    

#    can :manage, :all do
#			user.group_id.to_s == "1" # if admin
#		end
#
#		can [:create, :index, :new], Addressbookitem
#    can [:read, :update, :destroy, :edit], Addressbookitem do |a|
#			a.user_id == user.id
#		end
#    
#    can [:new, :register, :create], Referrer
#    can [:manage], Referrer do |r|
#      r.user_id == user.id
#    end
#
#    can [:read, :show, :index, :index_small], User
#		can [:edit, :update, :delete, :destroy], User do |u|
#			u.id.to_s == user.id.to_s
#		end
#
#		can [:index, :index_small, :new, :create, :show, :events, :users], Community
#		can [:read, :show], Community do |community|
#			community.is_public.to_s == "1"
#		end
#		can :manage, Community do |community|
#			community.user_id.to_s == user.id.to_s
#		end
#
#    can [:new, :create, :index, :index_small], Gallery 
#    can [:show], Gallery do |g|
#      g.is_public == 1
#    end
#    can [:manage], Gallery do |g|
#      g.user_id == user.id
#    end
#    
#		can [:index, :show], Country
#
#		can [:new, :create], Day
#    can :manage, Day do |day|
#			day.user_id.to_s == user.id.to_s
#		end
#
#		can [:index, :new, :create, :show], Dictionaryitem
#		can :manage, Dictionaryitem do |d|
#			d.user_id.to_s == user.id.to_s
#		end
#    
#    can [:index, :index_small, :new, :create, :show], Event
#    can [:read, :show], Event do |ee|
#      ee.is_public.to_s == "1"
#    end
#    can :manage, Event do |e|
#      e.user_id.to_s == user.id.to_s
#    end
#
#		can [:index, :new, :create, :global_feature, :menu_main, :index_small,
#    :popup], Report
#		can [:read, :show], Report do |r|
#			r.is_public.to_s == "1"
#		end
#		can :manage, Report do |r|
#			r.user_id.to_s == user.id.to_s
#		end
#
#		can [:index, :new, :create], Status
#    can [:show], Status do |s|
#      s.is_public == true
#    end
#	
#		can :manage, Status do |status|
#			status.user_id == user.id
#		end
#
#		can [:create, :new], Subscription
#
#    can :manage, CitiesUser do |c|
#      c.user_id.to_s == user.id.to_s
#    end
#    
#    can [:create, :new], CitiesUser
#    can :manage, CitiesUser do |cu|
#      cu.user_id.to_s == user.id.to_s
#    end
#    
#		can [:index, :read, :show, :foldin, :events], City
#    can [:edit, :update, :new, :create], City do
#      user[:group_id].to_s == "1"
#    end
#
#		can [:index, :index_small, :new, :create, :reports], Tag
#    can [:read, :show], Tag do |t|
#      t.is_public.to_s == "1"
#    end
#		can [:edit, :update, :read, :show], Tag do |tag|
#			tag.user_id.to_s == user.id.to_s
#		end
#
#    can [], Todo
#		can [:read, :show], Todo do |todo|
#			todo.is_public.to_s == "1"
#		end
#    can :manage, Todo do |todo|
#			todo.user_id.to_s == user.id.to_s
#		end
#		
#    can [:new, :create], Photo
#		can :manage, Photo do |p|
#			p.user_id == user.id 
#		end
#		can [:show], Photo do |p|
#			p.is_public == 1
#		end
#
#		can [:index, :index_small, :show, :create, :new], Venue
#		can :manage, Venue do |venue|
#			venue.user_id.to_s == user.id.to_s
#		end

  end
end
