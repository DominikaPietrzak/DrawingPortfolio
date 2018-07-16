class ComicChaptersController < ApplicationController

  def index
    @comic_book = ComicBook.find_by(params[:id])
    @chapters = ComicChapter.where(comic_book_id: @comic_book)
  end

  def new
    @comic_book = ComicBook.find_by(params[:id])
    @new_chapter = ComicChapter.new(comic_book_id: @comic_book)
  end

  def show
  end

end
