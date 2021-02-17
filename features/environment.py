import os

import yaml
from behave import fixture, use_fixture
from selenium import webdriver

browser_type = os.environ.get("BROWSER", "chrome")
platform = os.environ.get("PLATFORM", "desktop")


def get_browser(name):
    if name == "chrome":
        return webdriver.Chrome()
    else:
        return None


def get_vars():
    variables = {}
    dir_path = os.path.dirname(os.path.realpath(__file__))
    print(dir_path)
    for filename in os.listdir(dir_path):
        if filename.endswith("_variables.yaml"):
            file = open(os.path.join(dir_path, filename))
            local_vars = yaml.load(file, yaml.SafeLoader)
            file.close()
            basename = filename.split("_")[0]
            variables[basename] = local_vars
    return variables


def get_lookup(variables):
    def lookup(name):
        parts = name.split("::")
        node = variables
        for p in parts:
            if not isinstance(node, dict):
                return name
            n = node.get(p, None)
            if n is None:
                return name
            node = n
        return node
    return lookup


@fixture
def selenium_browser_chrome(context):
    # -- HINT: @behave.fixture is similar to @contextlib.contextmanager
    context.browser = webdriver.Chrome()
    context.lookup = get_lookup(get_vars())
    yield context.browser
    # -- CLEANUP-FIXTURE PART:
    context.browser.quit()


def before_all(context):
    use_fixture(selenium_browser_chrome, context)
    # -- HINT: CLEANUP-FIXTURE is performed after after_all() hook is called.

