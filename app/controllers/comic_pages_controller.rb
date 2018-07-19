class ComicPagesController < ApplicationController
    before_action :authenticate_user!


  def index
    @pages = ComicPage.all
    @comic_page = current_user.comic_pages.build
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
    redirect_to comic_pages_path
  end

  def destroy
    @comic_page = ComicPage.find(params[:id])
    @comic_page.destroy
  end

  def update
    @comic_page = ComicPage.find(params[:id])
    if @comic_page.update_attributes(page_params)
      flash[:success] = "Profile updated"
      redirect_to @comic_page
    else
      render 'edit'
    end
  end

  private
  def page_params
    params.require(:comic_page).permit(:comicimage, :number, :tag1, :tag2, :tag3, :comic_chapter_id)
  end
end
