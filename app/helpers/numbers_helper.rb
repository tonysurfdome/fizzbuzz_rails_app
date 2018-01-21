module NumbersHelper
  def fizzbuzz(all_values)
    list = all_values.collect do |val|
      content_tag(:tr) do
        content_tag(:td, val)
      end
    end

    content_tag(:table, list.join.html_safe, class: 'table')
  end
end
