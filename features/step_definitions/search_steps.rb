
Given('I have successfully navigated to the OLX homepage') do
  @home = HomePage.new
  @home.load
end

When('I search a product {string}') do |search_item|
  @search = HomePage.new
  @search.search_product(search_item)
  
end

Then('Assert the five first results and print data') do
  @search_results = SearchPage.new
  @search_results.get_search_result
end

When('I select and validate pagination') do
  @select_page = PaginationPage.new
  @select_page.select_number_page
end

When("I select a item search result") do
  @select_item = ItemPage.new  
  @select_item.select_item
end


Then('Assert the product in ads') do  
  expect(page).to have_content('Minha conta')
end
