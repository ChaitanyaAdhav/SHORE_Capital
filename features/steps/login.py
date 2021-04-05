import time

import seconds as seconds
from selenium import webdriver

from behave import *
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait

from methods import nav, click, input, wait
from methods.locator import locate_element
from methods import assertions
from methods import alerts
from selenium import webdriver
from variables import admin_variables
use_step_matcher("re")

@then('I\s+login\s+as\s+admin')
def admin_login (context):
    username = context.browser.find_element_by_xpath("//*[@name='user_name']")
    username.send_keys("CAdmin")
    password = context.browser.find_element_by_xpath("//*[@name='password']")
    password.send_keys("admin")
    submit = context.browser.find_element_by_xpath("//*[@type='submit']")
    submit.click()
    #time.sleep(10)
    element = context.browser.find_element_by_xpath("//*[@class='mx-1']")
    assert element.text == 'Chaitanya Admin'









