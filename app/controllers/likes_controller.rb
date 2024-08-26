class LikesController < ApplicationController
  before_action :find_book

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @book.likes.create(user_id: current_user.id)
    end
    redirect_to book_path(@book)
  end

  def destroy
    @like = @book.likes.find(params[:id])
    if @like.user_id == current_user.id
      @like.destroy
    end
    redirect_to book_path(@book)
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, book_id: params[:book_id]).exists?
  end
end
