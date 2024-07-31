class AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :update, :destroy]
  
    # GET /authors
    def index
      @authors = Author.all
      render json: @authors
    end
  
    # GET /authors/:id
    def show
      render json: @author
    end
  
    # POST /authors
    def create
      @author = Author.new(author_params)
  
      if @author.save
        render json: @author, status: :created
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /authors/:id
    def update
      if @author.update(author_params)
        render json: @author
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /authors/:id
    def destroy
      @author.destroy
      head :no_content
    end
  
    private
  
    def set_author
      @author = Author.find(params[:id])
    end
  
    def author_params
      params.require(:author).permit(:name, :bio)
    end
  end
  