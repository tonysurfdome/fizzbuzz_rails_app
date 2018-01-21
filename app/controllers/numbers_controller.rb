class NumbersController < ApplicationController
  include FizzBuzz

  def index
    @page_size = page_size
    @max = find_max
    data = FindFizzBuzz.call(1, @max)
    @values = Kaminari.paginate_array(data).page(params[:page]).per(@page_size)
    respond_to do |format|
      format.html
    end
  end
end
