class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new



  end

  def create
    @book = Book.new(book_params)
    @book.cover_image.attach(params[:book][:cover_image])

    if @book.save
      ActionCable.server.broadcast 'book_channel', { title: @book.title, message: 'A new book was created' }
      redirect_to books_path
    else
      render :new
    end
  end

  def show_genre
        @genre = params[:genre]
        allowed_genres = %w[kids horror comedy romance mystery]
        if allowed_genres.include?(@genre)
          @books = Book.where(genre: @genre.capitalize)
          render 'books/index'
        else
          render plain: "Genre not found", status: :not_found
        end
      
  end
    



  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.cover_image.attach(params[:book][:cover_image]) 
    if @book.update(book_params)
      redirect_to books_path, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: 'Book was successfully deleted.'
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :cover_image, :published_date, :author_id, :genre)
  end
end
