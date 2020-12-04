require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize

first_name = driver.find_element(id:'first-name')
first_name.send_keys 'iTMS'
sleep 2
last_name = driver.find_element(id: 'last-name')
last_name.send_keys 'Coaching'
sleep 2
job_title = driver.find_element(id: 'job-title')
job_title.send_keys 'QA'
sleep 2
education = driver.find_element(css:'#radio-button-2')
education.click
sleep 2
sex = driver.find_element(css: '#checkbox-1')
sex.click
sleep 2
experience = driver.find_element(id: "select-menu")
experience.send_keys '2-4'
sleep 2
date = driver.find_element(css: '#datepicker')
date.send_keys ("10/27/2025")
sleep 2
submit = driver.find_element(xpath: '//a[contains(text(),"Submit")]')
submit.click
sleep 5
driver.quit