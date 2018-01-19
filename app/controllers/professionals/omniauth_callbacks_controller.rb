# frozen_string_literal: true

class Professionals::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  # def facebook
  #   @Professional = Professional.from_omniauth(request.env["omniauth.auth"])
  #   if @Professional.persisted?
  #     sign_in_and_redirect @Professional, :event => :authentication
  #     set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_Professional_registration_url
  #   end
  # end

  # def google_oauth2
  #     @Professional = Professional.from_omniauth(request.env["omniauth.auth"])
  #     if @Professional.persisted?
  #       flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
  #       sign_in_and_redirect @Professional, :event => :authentication
  #     else
  #       session["devise.google_data"] = request.env["omniauth.auth"]
  #       redirect_to new_Professional_registration_url
  #     end
  # end

  # def linkedin
  #   @Professional = Professional.from_omniauth(request.env["omniauth.auth"])
  #   if @Professional.persisted?
  #     sign_in_and_redirect @Professional, :event => :authentication
  #     set_flash_message(:notice, :success, :kind => "Linkedin") if is_navigational_format?
  #   else
  #     session["devise.linkedin_data"] = request.env["omniauth.auth"]
  #     redirect_to new_Professional_registration_url
  #   end
  # end
  
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /Professionals/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
