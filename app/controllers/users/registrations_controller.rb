class Users::RegistrationsController < Devise::RegistrationsController
    private
 
    # Permit additional parameters for sign-up
    def sign_up_params
      params.permit(:email, :password, :password_confirmation)
    end
  
    # Permit additional parameters for account update
    def account_update_params
      params.permit(:email, :password, :password_confirmation, :current_password)
    end
  end
  