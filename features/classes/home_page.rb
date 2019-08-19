# Home page
class HomePage < SitePrism::Page
  set_url 'https://www.olx.com.br/'
  set_url_matcher(/olx.com.br/)

  element :search_field, "input[id='q']" 
  element :search_button, '.submitBtn'
  element :banner, '.iza-top'

  def search_product(search_item)
    wait_until_banner_visible
    wait_until_search_field_visible
    search_field.set search_item
    wait_until_search_button_visible
    search_button.click
  end
end
