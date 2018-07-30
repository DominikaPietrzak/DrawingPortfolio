class ComicPageSidesController < ApplicationController
  def index
    @pages = ComicPage.all
  end
  def show
    @pages = ComicPage.where(comic_chapter_id: params[:comic_chapter_id])
    @page = @pages.where(number: params[:number]).first
  end
end
