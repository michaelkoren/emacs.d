#!/usr/bin/env python
import sys
print_noline = sys.stdout.write

try:
    from DataTypes.Pretty import prettify
except ImportError as e:
    from pprint import pformat as prettify
    

def raw_input_all():
    try:
        text = raw_input()
        while (True):
            text += '\n' + raw_input()
    except EOFError:
        return text

def run():
    the_input = raw_input_all()
    try:
        evaled_input = eval(the_input)
        the_result = prettify(evaled_input)
    except:
        the_result = the_input
    print_noline(str(the_result))


if __name__ == '__main__':
    run()
