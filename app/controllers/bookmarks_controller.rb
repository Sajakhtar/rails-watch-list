class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @movie = Movie.new
  end

  def create
    @bookmark = Review.new(bookmark_params)
    @movie = Movie.find(params[:movie_id])
    @list = List.find(params[:list_id])
    @bookmark.movie = @movie

    if @bookmark.save
      redirect_to @movie
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to lists_path, notice: 'Bookmark was successfully destroyed.'
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end
end
