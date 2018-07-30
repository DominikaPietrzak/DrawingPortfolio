class ComicChapterSidesController < ApplicationController

  def index
    @page = ComicChapter.find(params[:id])
    
  end

  def show
    @chapter = ComicChapter.find(params[:id])

    @pages = ComicPage.where(comic_chapter_id:@chapter.id )
    @firstPage = @pages.first
  end

end
