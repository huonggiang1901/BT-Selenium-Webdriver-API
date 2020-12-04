require 'Selenium-WebDriver'

driver = Selenium::WebDriver.for :chrome
begin
    driver.get 'http://www.google.com/'
    sleep 3
    driver.quit 
end