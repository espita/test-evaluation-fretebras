# Test for Fretebras using the website Olx

This is automated test designed using Ruby as language, Cubumber as BDD framework, SitePrism.

### Requirement

* Ruby version 2.5.5  - [Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
* Google Chrome
* ChromeDriver - This is a driver for default browser [ChromeDriver](https://chromedriver.chromium.org/)
* Firefox
* GeckoDriver - This is a driver for browser Firefox [GeckoDriver](https://github.com/mozilla/geckodriver)

### Dependencies

* Capybara [Gem Capybara](https://github.com/teamcapybara/capybara)
* Cucumber [Gem Cucumber](https://github.com/cucumber/cucumber-ruby)
* Rspec    [Gem Rspec](https://github.com/rspec/rspec)
* Selenium-webdriver [Gem Selenium-Webdriver](https://github.com/SeleniumHQ/selenium/tree/master/rb)
* Webdrivers [Gem Webdrivers](https://github.com/titusfortner/webdrivers)
* Pry [Gem Pry](https://github.com/pry/pry)
* SitePrism [Gem SitePrism](https://github.com/site-prism/site_prism)

### Installation Instructions

 >copy the project 
 
```bash
$ git clone https://github.com/espita/test-avaliacao-fretebras.git
```

Within the project folder

>install bundler

```bash
$ gem install bundler
```
>install dependencies

```bash
$ bundle install
```

# Run Test

To run automated tests we will use the commands listed below straight from the root folder.

### Run all tests with default browser "Chrome" 

```bash
$ bundle exec cucumber
```
or

```bash
$ bundle exec cucumber -t @search
```

### Run all tests with browser Firefox 

```bash
$ bundle exec cucumber -p firefox
```

### Run specific scenario with tags chooses brwoser

```bash
$ bundle exec cucumber -p chrome @search_results
```

```bash
$ bundle exec cucumber -p firefox @search_results
```


### Run all tests with browser Chrome headless mode

```bash
$ bundle exec cucumber -p chrome_headless
```

### Run all tests with browser Firefox headless mode

```bash
$ bundle exec cucumber -p firefox_headless
```

### Run with json and htm report format chooses brwoser displaying execution

>examples 

```bash
$ bundle exec cucumber $(if [ "$REPORT" = "true" ] ; then echo " -p report "; else echo ""; fi) -p chrome
$ bundle exec cucumber $(if [ "$REPORT" = "true" ] ; then echo " -p report "; else echo ""; fi) -p firefox
```

# Author

Edson Pita            
E-mail - <edson.pita.sp@gmail.com>        
Linkedin - [Linkedin](https://www.linkedin.com/in/edsonpita/)