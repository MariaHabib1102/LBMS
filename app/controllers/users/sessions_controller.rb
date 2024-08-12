# app/controllers/users/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
    def destroy
      byebug
      # Redirect to the sign-in page after sign-out
      redirect_to new_user_session_path
    end
end
  