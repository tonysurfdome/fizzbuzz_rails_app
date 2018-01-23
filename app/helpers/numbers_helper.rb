module NumbersHelper
  def fizzbuzz(all_values)
    user_favorties = current_user.user_favorites.pluck(:favorite_number)
    list = all_values.map.with_index do |value, inx|
      content_tag(:tr) do
        content_tag(:td, value) +
        content_tag(:td, display_user_favorties(all_values, inx, user_favorties))
      end
    end
    content_tag(:table, list.join.html_safe, class: 'table')
  end

  private

  def display_user_favorties(all_values, inx, user_favorties)
    value = all_values[inx].to_i
    if all_values[inx].to_i == 0
      tmp = all_values[inx - 1].to_i
      value = tmp + 1
    end

    if user_favorties.include?(value.to_i)
      content_tag(:span, 'Favorited', class: 'favorited', id: "fav_#{value}")
    else
      link_to('Favorite', add_favorite_path(number: value), id: "fav_#{value}")
    end
  end
end
