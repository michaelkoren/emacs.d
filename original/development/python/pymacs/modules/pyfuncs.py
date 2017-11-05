from Pymacs import lisp

def shell_in_current_path():
    current_path = lisp.default_directory.value()
    lisp.shell()
    lisp.insert_string("cd %s\n" % current_path)
    lisp.comint_send_input()

interactions = {shell_in_current_path:""}
