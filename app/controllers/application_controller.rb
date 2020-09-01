class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    authorize_resource :class => false
    
    rescue_from CanCan::AccessDenied do |exception|
        Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
    # root_urlにかっ飛ばす。
        redirect_to root_url
    end
    
    def current_ability
      @current_ability ||= Ability.new(current_user)
    end
        
    def configure_permitted_parameters
        
        added_attrs = [ :gen, :lastn, :firstn, :h_lastn, :h_firstn, :bachelor, :major, :studno, :username, :email, :role, :image, :line_id]
        # サインアップ時にnameのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
        
        devise_parameter_sanitizer.permit(:login, keys: [:username, :email, :password, :remember_me])
        # アカウント編集の時にnameとprofileのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
        #devise_parameter_sanitizer.permit(:sign_ip, keys: [:login, :username, :email, :password, :remember_me]) 
        
    end
end
