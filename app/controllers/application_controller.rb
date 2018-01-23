class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    #After Sign In path
    def after_sign_in_path_for(resource)
        if resource.class == Professional
          professional_account_path(@professional)
        elsif resource.class == User
          root_path
        end 
    end


end
