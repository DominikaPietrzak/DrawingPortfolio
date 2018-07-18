class ComicChaptersController < ApplicationController

  before_action :authenticate_user!

  def index
    @chapters = ComicChapter.all
  end

  def new
    @comic_chapter = current_user.comic_chapters.build
  end

  def show
    @chapter = ComicChapter.find(params[:id])
  end

  def create
    @comic_chapter = current_user.comic_chapters.build(chapter_params)
    @comic_chapter.save
  end

  private

  def chapter_params
    params.require(:comic_chapter).permit(:title, :number, :comic_book_id)
  end
end
