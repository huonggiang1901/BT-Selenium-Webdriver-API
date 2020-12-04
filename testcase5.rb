require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.google.com'
sleep 2
driver.manage.window.maximize
sleep 2
driver.page_source
sleep 2
driver.quit