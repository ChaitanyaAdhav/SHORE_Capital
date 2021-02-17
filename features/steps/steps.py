import time

from behave import *
from selenium.common.exceptions import NoSuchElementException

from methods import nav, click, input, wait
from methods.locator import locate_element
from methods import assertions
from methods import alerts


use_step_matcher("re")


@given('I navigate to "([^\"]*)"')
def navigate(context, url):
    nav.to(context, context.lookup(url))


@then('I click on link having text "(.*?)"')
def click_link(context, text):
    click.do(context, "text", context.lookup(text))


@then('element\s+having\s+(.+)\s+"([^\"]*)"\s+should\s*((?:not)?)\s+have\s*((?:partial)?)\s+text\s+as\s+"(.+)"')
def assert_elem_text(context, loc_type, loc_value, present, partial, value):
    value = context.lookup(value)
    loc_value = context.lookup(loc_value)
    elem = locate_element(context, loc_type, loc_value)
    present_check = False if present == "not" else True
    partial_check = True if partial == "partial" else False
    assertions.assert_text(elem, partial_check, value, present_check)


@then('element\s+having\s+(.+)\s+"([^\"]*)"\s+should\s*((?:not)?)\s+have\s+attribute\s+(.+)\s+as\s+"(.+)"')
def assert_attr(context, loc_type, loc_value, present, attr_name, attr_value):
    attr_value = context.lookup(attr_value)
    loc_value = context.lookup(loc_value)
    elem = locate_element(context, loc_type, loc_value)
    present_check = False if present == "not" else True
    assertions.assert_attr(elem, attr_name, attr_value, present_check)


@then('I\s+enter\s+"([^\"]*)"\s+into\s+input\s+field\s+having\s+(.+)\s+"([^\"]*)"')
def input_text(context, data, loc_type, loc_value):
    data = context.lookup(data)
    loc_value = context.lookup(loc_value)
    input.input_text(context, loc_type, loc_value, data)


@then('I\s+click\s+on\s+element\s+having\s+(id|name|class|xpath|css)\s+"(.*?)"')  # (?:\s+and\s+text\s+"(.+)")?')
def step_impl(context, loc_type, loc_value):
    loc_value = context.lookup(loc_value)
    click.do(context, loc_type, loc_value)


@then('I\s+wait\s+(\d+)\s+seconds\s+for\s+element\s+having\s+(.+)\s+"(.*?)"\s+to\s+(display|exist)')
def step_impl(context, seconds, loc_type, loc_value, condition):
    seconds = int(seconds)
    loc_value = context.lookup(loc_value)
    wait.element(context, loc_type, loc_value, condition, seconds)


@then('element\s+having\s+(.+)\s+"([^\"]*)"\s+should\s+be\s+(enabled|disabled)')
def assert_enabled(context, loc_type, loc_value, loc_state):
    loc_value = context.lookup(loc_value)
    elem = locate_element(context, loc_type, loc_value)
    assertions.assert_enabled(elem, loc_state)


@then('I\s+clear\s+input\s+field\s+having\s+(.+)\s+"([^\"]*)"')
def clear_input(context, loc_type, loc_value):
    loc_value = context.lookup(loc_value)
    elem = locate_element(context, loc_type, loc_value)
    input.clear(elem)


@then('I\s+hover\s+over\s+element\s+having\s+(.+)\s+"(.*?)"')
def hover(context, loc_type, loc_value):
    loc_value = context.lookup(loc_value)
    elem = locate_element(context, loc_type, loc_value)
    nav.hover_over(context, elem)


@then('I\s+sleep\s+for\s+(\d+)\s+seconds')
def sleep(context, n):
    time.sleep(int(n))


@then('I\s+maximize\s+browser\s+window')
def maximize(context):
    context.browser.maximize_window()


@then('element\s+having\s+(.+)\s+"(.*?)"\s+should\s*((?:not)?)\s+be\s+present')
def present(context, loc_type, loc_value, present_token):
    should_exist = False if present_token == "not" else True
    try:
        loc_value = context.lookup(loc_value)
        locate_element(context, loc_type, loc_value)
    except NoSuchElementException:
        if not should_exist:
            return True
    else:  # element is present
        if should_exist:
            return True
    raise Exception("Element present exception")


@then('I\s+scroll\s+to\s+element\s+having\s+(.+)\s+"(.*?)"')
def scroll(context, loc_type, loc_value):
    loc_value = context.lookup(loc_value)
    elem = locate_element(context, loc_type, loc_value)
    nav.scroll_to(elem)

@then('I\s+navigate\s+(back|forward)')
def navigate_dir(context, direction):
    if direction == 'forward':
        context.browser.forward()
    elif direction == 'back':
        context.browser.back()

@then('I\s+(accept|dismiss)\s+alert')
def alerthandling(context,condition):
    alerts.do_alert(context,condition)