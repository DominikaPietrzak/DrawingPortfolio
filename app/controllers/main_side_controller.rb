class MainSideController < ApplicationController

  def index

    @pages = ComicPage.limit(3)
    @pages2 = ComicPage.limit(3)
    @pages3 = ComicPage.limit(3)

    @comics = ComicBook.limit(3)
    @comics2 = ComicBook.limit(3)
    @comics3 = ComicBook.limit(3)

    @chapters = ComicChapter.limit(3)
    @chapters2 =ComicChapter.limit(3)
    @chapters3 = ComicChapter.limit(3)


    @arts = Art.limit(3)
    @arts2 = Art.limit(3)
    @arts3 = Art.limit(3)

  end

end
