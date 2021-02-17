from .locator import locator_types
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


def element(context, loc_type, loc_value, condition, seconds):
    waiter = WebDriverWait(context.browser, seconds)
    loc_tuple = (locator_types[loc_type], loc_value)
    if condition == "display":
        condition = EC.visibility_of_element_located(loc_tuple)
    elif condition == "exist":
        condition = EC.presence_of_element_located(loc_tuple)
    waiter.until(condition)
