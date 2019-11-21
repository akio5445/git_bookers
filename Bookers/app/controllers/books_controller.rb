class BooksController < ApplicationController
  before_action :id_book, only: [:show, :edit, :update, :destroy,]
  def top
    @book = Book.new
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    respond_to do |f|
      if @book.save
        f.html { redirect_to @book, notice: 'Book was successfully created.' }
      else
        @books = Book.all
        #redirect_to index_book_path(book.id)
        f.html { render action: :index }
      end
    end
  end

    def update
      respond_to do |f|
        if @book.update(book_params)
          f.html { redirect_to @book, notice: 'Book was successfully updated.' }
        else
          #redirect_to index_book_path(book.id)
          f.html { render action: :edit }
        end
      end
    end

    def destroy
      @book.destroy
      respond_to do |f|
        f.html { redirect_to index_book_path, notice: 'Book was successfully destroyed.' }
      end
    end

  
  private
    def id_book
      @book = Book.find(params[:id])
    end
   
    def book_params
        params.require(:book).permit(:title, :body)
    end

end

