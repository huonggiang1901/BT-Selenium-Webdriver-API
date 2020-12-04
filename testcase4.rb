require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.google.com'
sleep 2
driver.manage.window.maximize
puts driver.current_url
sleep 2
driver.quit