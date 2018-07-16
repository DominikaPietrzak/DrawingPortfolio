class ComicBooksController < ApplicationController

  def index
    @comic_books = ComicBook.all
  end

  def show
    @comic_book = ComicBook.find(params[:id])
  end

  def new
    @comic_book = ComicBook.new
  end

  def destroy
    @comic_book = ComicBook.find_by(params[:id])
  end


end