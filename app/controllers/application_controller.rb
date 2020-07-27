class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    

        
    def configure_permitted_parameters
        
        added_attrs = [ :gen, :firstn, :lastn, :h_firstn, :h_lastn, :bachelor, :major, :username, :email, :studno]
        # サインアップ時にnameのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
        # アカウント編集の時にnameとprofileのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
        #devise_parameter_sanitizer.permit(:sign_ip, keys: [:login, :username, :email, :password, :remember_me]) 
        
    end

    
end
