# app/controllers/users_controller.rb
class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
   
    def show
    end
  
    def edit
    end
  
    def update
      if @user.update(user_params)
        redirect_to @user, notice: 'Profile was successfully updated.'
      else
        render :edit
      end
    end

    def user_books
        @user_books = current_user.books
        @q =@user_books.ransack(params[:q])
        @books = @q.result(distinct: true)   
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

end
  