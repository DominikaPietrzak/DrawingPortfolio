class ComicPagesController < ApplicationController
    before_action :authenticate_user!


  def index
    @pages = ComicPage.all
  end

  def new
    @comic_page = current_user.comic_pages.build
  end

  def edit
    @comic_page = ComicPage.find(params[:id])
  end

  def show
    @page = ComicPage.find(params[:id])
  end

  def create
    @comic_page = current_user.comic_pages.build(page_params)

    @comic_page.save!
    redirect_to arts_path
  end

  private
  def page_params
    params.require(:comic_page).permit(:comicimage, :number, :tag1, :tag2, :tag3, :comic_chapter_id)
  end
end
