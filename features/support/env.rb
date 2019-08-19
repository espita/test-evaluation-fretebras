
require 'capybara/dsl'
require 'rspec'
require 'cucumber'
require 'webdrivers'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'

World Capybara::DSL

BROWSER = ENV['BROWSER']

## Environment definitions (BROWSER=firefox / without parameter chrome)
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w["--window-size=1024,768"] }
  )
  Capybara::Selenium::Driver.new app, browser: :chrome, desired_capabilities: capabilities 

  elsif BROWSER.eql?('chrome_headless')
    browser_options = Selenium::WebDriver::Chrome::Options.new
    browser_options.add_argument('--headless')
    browser_options.add_argument('--disable-dev-shm-usage')
    browser_options.add_argument('--disable-gpu')
    browser_options.add_argument('--no-sandbox')

    Capybara::Selenium::Driver.new app, browser: :chrome, options: browser_options
    
  elsif BROWSER.eql?('firefox')
    browser_options = Selenium::WebDriver::Firefox::Options.new
    browser_options.add_argument("--width=1900");
    browser_options.add_argument("--height=1080");
    Capybara::Selenium::Driver.new app, browser: :firefox, options: browser_options

  elsif BROWSER.eql?('firefox_headless') 
    browser_options = Selenium::WebDriver::Firefox::Options.new
    browser_options.add_argument('--headless')
    browser_options.add_argument('--disable-dev-shm-usage')
    Capybara::Selenium::Driver.new app, browser: :firefox, options: browser_options 
  end
end
Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://www.olx.com.br/'
  config.default_max_wait_time = 40
end
