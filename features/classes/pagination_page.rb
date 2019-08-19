# frozen_string_literal: true

# Pagination

class PaginationPage < SitePrism::Page
  element :select_page, 'li.number:nth-child(2) > a:nth-child(1)'

  def select_number_page
    wait_until_select_page_visible
    select_page.click
  end
end
