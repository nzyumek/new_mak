# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
       user ||= User.new # guest user (not logged in)
       Rails.logger.debug "#{user.role}"
        can :manage, :session
        can :manage, :inquiry
        can :read, :newsfeed
        can :manage, :registration
        can :manage, :mak
        can :read, :about
       
       if user.admin? or user.fuku_kan? or user.fuku_kan_gi? or user.fuku_kan_edi? or user.fuku_kan_sho? or user.fuku_kan_so? or user.fuku_kan_pra? or user.gijutsu_hp
         can :manage, :all
       end
       
       if user.gijutsu_hp? or user.gijutsu?
        can :manage, :youtube_post
        can :read, [:user, :youtube_post, :member_list]
        can :manage, :registration
       end
       
       if user.shougai? or user.shougai_manager? or user.accountant? or user.practise? or user.practise_manager? or user.editor? or user.editor_manager? or user.soumu? or user.soumu_manager? or user.shibuchou? or user.fuku_shibuchou? 
         can :read, [:user, :youtube_post, :member_list]
         can :manage, :registration
         #can :edit, [:member_list, :youtube, :news, :about, :home, :inquiry, :user, :registration]
       end
       
       if user.member? #:makがモデルないため、コントローラーに設定しないといけませんが、理解できていません。
        can :manage, :registration
        can :read, :youtube_post
       end
       
       #if authenticate_admin!
       # can :manage, :all
       #end
       
       if user.ob?
         can :read, :youtube
         can :manage, :registration
       end

        # can :manage, :all
      # end
    
    #adminはuser.adminじゃないのでそれを権限つけるためにする。
    
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
  
  #private
  
  #def admin_ability
   #   can :manage, :all
  #end  
  
  #def fuku_kan_ability
  #    can :read, :all
  #end  
  
  #def gijutsu_ability
  #    can :read, :all
  #end  

  #def gijutsu_manager_ability
  #    can :read, :all
  #end
  
  #def shougai_ability
  #    can :read, :all
  #end
  
  #def shougai_manger_ability
  #    can :read, :all
  #end
  
  #def accountant_ability
  #    can :read, :all
  #end  
  
  #def practise_ability
  #    can :read, :all
  #end
  
  #def practise_manager_ability
  #    can :read, :all
  #end 
  
  #def editor_ability
  #    can :read, :all
  #end
  
  #def editor_manger_ability
  #    can :read, :all
  #end
  
  #def soumu_ability
  #    can :read, :all
  #end  

  #def soumu_manger_ability
  #    can :read, :all
  #end
  
  #def shibuchou_ability
  #    can :read, :all
  #end  

  #def fuku_shibuchou_ability
  #    can :read, :all
  #end
  
  #def general_ability
  #    can :read, [Youtube]
  #end
  
  #def ob_ability
  #    can :read, [Youtube]
  #end  
  
end
