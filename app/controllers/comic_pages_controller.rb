class ComicPagesController < ApplicationController
    before_action :authenticate_user!


  def index
    @pages = ComicPage.all
  end

  def new
    @page = current_user.comic_pages.build
  end

  def edit
    @page = ComicPage.find(params[:id])
  end

  def show
    @page = ComicPage.find(prams[:id])
  end

  def create
    @page = current_user.comic_pages.build(page_params)
    @page.save
  end

  private
  def page_params
    params.require(:page).permit(:comicimage, :number, :tag1, :tag2, :tag3)
  end
end
