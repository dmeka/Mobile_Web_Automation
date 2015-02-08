require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'timeout'


# Using the Selenium driver as default so we can pop-open Firefox and get a
# good warm fuzzy feeling

Capybara.default_driver = :selenium

# Configure the base urls for frontend and backend here
$mobileweb_url = 'http://mhigh.usatoday.com'

def base_url(path)
  $mobileweb_url + path
end

$mweb_url = 'http://mhigh.usatoday.com/news/'
def news_url()
	$mweb_url
end

def visit_url(url)
	visit url
end

require 'open-uri'





