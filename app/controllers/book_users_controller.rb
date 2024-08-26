class BookUsersController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        unless current_user.books.include?(@book)
          current_user.books << @book
          flash[:notice] = 'Book added to your collection!'
        else
          flash[:alert] = 'Book is already in your collection.'
        end
        redirect_to books_path
    end
end 
