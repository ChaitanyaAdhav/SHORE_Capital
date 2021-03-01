from selenium.webdriver import ActionChains


def to(context, url):
    context.browser.get(url)



def hover_over(context, elem):
    ActionChains(context.browser).move_to_element(elem).perform()


def scroll_to(elem):
    return elem.location_once_scrolled_into_view

