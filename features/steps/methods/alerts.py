


def do_alert(context,condition):
    alertcheck = context.browser.switch_to.alert
    if condition == "accept":
        alertcheck.accept
    if condition == "dismiss":
        alertcheck.dismiss
