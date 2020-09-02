#!/usr/bin/python3
import sys
from os.path import expanduser
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.firefox.firefox_profile import FirefoxProfile

profile_path = "/home/viktor/.mozilla/firefox/uxgdb4wv.headless"
# url = "https://store.steampowered.com/account/history/"
url = sys.argv[1]
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

options = Options()
options.headless = True
options.profile = profile_path
driver = webdriver.Firefox(firefox_options=options)
driver.get(url)
print(driver.page_source)
driver.quit()

