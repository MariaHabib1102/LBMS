class BooksController < ApplicationController
  def index
    @q =Book.ransack(params[:q])
    @books = @q.result(distinct: true)   
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
          @q = @books.ransack(params[:q])
          @books = @q.result(distinct: true)
          render 'books/index'
        else
          render plain: "Genre not found", status: :not_found
        end
      
  end
    

  def like
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @book.likes.create(user_id: current_user.id)
    end
    redirect_to book_path(@book)
  end


  def already_liked?
    Like.where(user_id: current_user.id, book_id: @book.id).exists?
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
