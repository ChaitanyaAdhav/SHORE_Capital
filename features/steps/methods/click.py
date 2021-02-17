from .locator import locate_element


def do(context, loc_type, value):
    locate_element(context, loc_type, value).click()