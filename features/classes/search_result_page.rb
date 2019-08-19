# frozen_string_literal: true

# Search
class SearchPage < SitePrism::Page
  elements :search_titles_result, 'h2.OLXad-list-title'
  elements :search_price_result, 'p.OLXad-list-price'

  def get_search_result
    @titles = arr = []
    search_titles_result.each { |result| arr << result.text }
    @titles

    @prices = arr = []
    search_price_result.each { |result| arr << result.text }
    @prices

    puts @titles [0..4], "\n"
    puts @prices [0..4]
  end
end
