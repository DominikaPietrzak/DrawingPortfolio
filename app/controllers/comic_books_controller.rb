class ComicBooksController < ApplicationController

before_action :authenticate_user!

  def index
    @comic_books = ComicBook.all
    @comic_book = current_user.comic_books.build
  end

  def show

    @comic = ComicBook.find(params[:id])
    @chapters = ComicChapter.where(comic_book_id: params[:id])
    # @chapter = ComicChapter.find_by(id: params[:id])
    # @comic = ComicBook.find_by(id: @chapter.comic_book_id)
  end

  def new
    @comic_book = current_user.comic_books.build
  end

  def destroy
    @comic_book = ComicBook.find_by(params[:id])
  end

  def create
    @comic_book = current_user.comic_books.build(comic_params)
    @comic_book.save
  end

  def edit
    @comic_book = ComicBook.find(params[:id])
  end

  def update
    @comic_book = ComicBook.find(params[:id])
    if @comic_book.update_attributes(comic_params)
      flash[:success] = "ComicBook updated"
      redirect_to @comic_book
    else
      render 'edit'
    end
  end


  private

  def comic_params
    params.require(:comic_book).permit(:title, :comiccover)
  end

end
