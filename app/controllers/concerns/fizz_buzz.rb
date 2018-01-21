module FizzBuzz

  MAXIMUM_VALUE = 100_000_000_000
  MINIMUM_VALUE = 0
  def find_max
    if params.key?(:max) &&
       params[:max].to_i > MINIMUM_VALUE &&
       params[:max].to_i <= MAXIMUM_VALUE
      params[:max].to_i
    else
      100
    end
  end

  def page_size
    if params.has_key?(:page_size) &&
       params[:page_size].to_i > 0
      params[:page_size].to_i
    else
      10
    end
  end
end
