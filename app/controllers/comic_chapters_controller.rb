class ComicChaptersController < ApplicationController

  def index
    @chapters = ComicChapter.all
  end

  def new
    @comic_book = ComicBook.find_by(params[:id])
    @new_chapter = ComicChapter.new(comic_book_id: @comic_book)
  end

  def show
    @chapter = ComicChapter.find(params[:id])

  end

end
