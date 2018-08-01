class ComicChapterSidesController < ApplicationController

  def index
    @page = ComicChapter.find(params[:id])
  end

  def show

    if params[:id]
      @chapter = ComicChapter.find(params[:id])
      @pages = ComicPage.where(comic_chapter_id:@chapter.id )
      @firstPage = @pages.first
    end

    if params[:format]
      chap_id = params[:format]
      @chapter = ComicChapter.find_by(id: chap_id)
      @pages = ComicPage.where(comic_chapter_id: @chapter.id )
      @firstPage = @pages.first

    end

  end

end
