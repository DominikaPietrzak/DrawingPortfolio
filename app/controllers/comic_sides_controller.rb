class ComicSidesController < ApplicationController

  def index
    @comics = ComicBook.all
  end

  def show
    @comic = ComicBook.find (params[:id])

    @chapters = ComicChapter.where(comic_book_id: @comic.id)
  end
end
