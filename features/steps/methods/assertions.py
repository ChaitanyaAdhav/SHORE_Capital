def assert_text(elem, partial, value, present):
    text = elem.text
    found = False
    if partial:
        if value in text:
            found = True
    else:
        if value == text:
            found = True
    if present:
        assert found
    else:
        assert(not found)


def assert_attr(elem, attr_name, attr_value, present):
    elem_attr_value = elem.get_attribute(attr_name)
    if present:
        assert(attr_value == elem_attr_value)
    else:
        assert(attr_value != elem_attr_value)


def assert_enabled(elem, loc_state):
    if loc_state == 'disabled':
        return not elem.is_enabled()
    else:
        return elem.is_enabled()


def assert_displayed(elem, present):
    if present:
        return elem.is_displayed()
    else:
        return not elem.is_displayed()

def assert_notdisplayed(elem, present):
    if present:
        return not elem.is_notdisplayed()

    else:
        return elem.is_notdisplayed()
