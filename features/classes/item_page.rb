#Item
class ItemPage < SitePrism::Page
    element :select_first_item, 'h2.OLXad-list-title', match: :first
    elements :title_item, '#ad_title'
    elements :iframe, 'iframe'
  
  def select_item
      wait_until_iframe_visible
      select_first_item.click
  end
  
  end