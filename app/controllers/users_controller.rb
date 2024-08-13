# app/controllers/users_controller.rb
class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
  
    before_create :generate_library_card_number

 
    def show
      # The user is already set by the before_action
    end
  
    def edit
      # The user is already set by the before_action
    end
  
    def update
      if @user.update(user_params)
        redirect_to @user, notice: 'Profile was successfully updated.'
      else
        render :edit
      end
    end
  
    private
  
    # Set the user based on the ID from params
    def set_user
      @user = User.find(params[:id])
    end
  
    # Strong parameters for user updates
    def user_params
      params.require(:user).permit(:name, :email, :contact, :address, :library_card_number, :role, :fees)
    end

    def generate_library_card_number
      loop do
        self.library_card_number = generate_unique_number
        break unless User.exists?(library_card_number: library_card_number)
      end
    end
  
    def generate_unique_number
      format('%06d', rand(1..999999))
    end
end
  