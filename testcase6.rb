require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.google.com'
sleep 1
driver.manage.window.maximize
sleep 1
search = driver.find_element(name: 'q')
search.send_keys 'iTMS Coaching'
sleep 1
puts driver.title
sleep 1
driver.quit
