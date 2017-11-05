#!/usr/bin/env python

from DataTypes.Pretty import prettify

def raw_input_all():
    try:
        text = raw_input()
        while (True):
            text += '\n' + raw_input()
    except EOFError:
        return text

if __name__ == '__main__':
    print prettify(raw_input_all())
