class MainSideController < ApplicationController

  def index
    @pages = ComicPage.limit(12)
    @comics = ComicBook.limit(12)
    @chapters = ComicChapter.limit(12)
    @arts = Art.limit(10)
  end

end
