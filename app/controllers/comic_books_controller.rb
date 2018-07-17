class ComicBooksController < ApplicationController

before_action :authenticate_user!

  def index
    @comic_books = ComicBook.all
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

  private

  def comic_params
    params.require(:comic_book).permit(:title)
  end

end
