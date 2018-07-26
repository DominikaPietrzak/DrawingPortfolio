class ComicChaptersController < ApplicationController

  before_action :authenticate_user!

  def index
    @chapters = ComicChapter.all
    @comic_chapter =current_user.comic_chapters.build
  end

  def new
    @comic_chapter = current_user.comic_chapters.build
    @comics = ComicBook.all
  end

  def show
    @chapter = ComicChapter.find(params[:id])
    @pages =  ComicPage.where(comic_chapter_id: @chapter.id)
  end

  def create
    @comic_chapter = current_user.comic_chapters.build(chapter_params)
    @comic_chapter.save
    redirect_back(fallback_location: comic_chapters_url)
  end

  def edit
    @comic_chapter = ComicChapter.find(params[:id])
  end

  def destroy
    @comic_chapter = ComicChapter.find(params[:id])
    @comic_chapter.destroy
  end

  def update

    @comic_chapter = ComicChapter.find(params[:id])
    @comic_chapter.update_attributes(chapter_params_with_user_id)
    flash[:success] = "Chapter updated"
    redirect_to @comic_chapter
  end



  def chapter_params
    params.require(:comic_chapter).permit(:title, :number, :comic_book_id, :chaptercover)
  end

  def chapter_params_with_user_id
    user_params = {user_id: current_user.id}
    params.require(:comic_chapter).permit(:title, :number, :comic_book_id, :chaptercover).merge(user_params)
  end

end
