from .locator import locate_element


def input_text(context, loc_type, loc_value, text):
    locate_element(context, loc_type, loc_value).send_keys(text)


def clear(elem):
    elem.clear()
