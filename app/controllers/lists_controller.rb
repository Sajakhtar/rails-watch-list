class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @review = Review.new
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @lists = List.all

    if @list.save
      redirect_to @list
    else
      # render :new
      render :index
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :image)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
