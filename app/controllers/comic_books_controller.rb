class ComicBooksController < ApplicationController

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
    @comic_book = ComicBook.new
  end

  def destroy
    @comic_book = ComicBook.find_by(params[:id])
  end


end
