from selenium.webdriver.common.by import By

locator_types = {
    "text": By.LINK_TEXT,
    "partial_text": By.PARTIAL_LINK_TEXT,
    "xpath": By.XPATH,
    "name": By.NAME,
    "id": By.ID,
    "class": By.CLASS_NAME,
    "css": By.CSS_SELECTOR
}


def locate_element(context, loc_type, loc_value):
    print(f"===={loc_type}={loc_value}===")
    by = locator_types[loc_type]
    return context.browser.find_element(by, loc_value)