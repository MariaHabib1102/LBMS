module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user!  # Use Devise's authenticate_user! to ensure the user is logged in
    before_action :authenticate_admin

    private

    def authenticate_admin
      # Replace with your own admin check logic
      redirect_to root_path, alert: " authorized." unless current_user.role == "admin"
    end
  end
end
