class NumbersController < ApplicationController
  include FizzBuzz

  def index
    @page_size = page_size
    @max = find_max
    data = FindFizzBuzz.call(1, @max)
    @values = Kaminari.paginate_array(data).page(params[:page]).per(@page_size)
    respond_to do |format|
      format.html
      format.json { render json: @values }
    end
  end

  def add_favorite
    number = params[:number]
    user_favorties = current_user.user_favorites.pluck(:favorite_number)
    unless user_favorties.include?(number)
      user_fav = current_user.user_favorites.new favorite_number: number
      user_fav.save
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: current_user.user_favorites, status: :created }
    end
  end
end
