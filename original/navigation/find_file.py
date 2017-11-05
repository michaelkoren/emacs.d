#!/usr/bin/env python
import os
import sys

def raw_input_all():
    try:
        text = raw_input()
        while (True):
            text += '\n' + raw_input()
    except EOFError:
        return text

def real_split(text, character):
    """
    splits when character does not follow '\'
    """
    result = []
    container = ''
    for subtext in text.split(character):
        if subtext.endswith('\\'):
            container += subtext[:-1] + character
        else:
            result.append(container + subtext)
            container = ''
    if container:
        result.append(container)
    return result

def multiple_split(text, splitters, index):
    result = text
    for splitter in splitters:
        result = real_split(result, splitter)[index]
    return result


def find_file(position):
    position = int(position)
    text = raw_input_all()
    text = text.split('\n')[0]
    
    for prenum in ['#include ', 'from ', 'import ']:
        if text.startswith(prenum) and (position <= len(prenum)):
            position = len(prenum) + 1
    
    pre_text = multiple_split(text[:position], ['<', '"', '\'', ',', ':', ' '], -1)
    post_text = multiple_split(text[position:], ['>', '"', '\'', ',', ':', ' '], 0)
    sub_path = pre_text + post_text
    
    if text.startswith('from ') or text.startswith('import '):
        sub_path = sub_path.replace('.', os.path.sep) + '.py'
        pathes = os.getenv('PYTHONPATH').split(os.path.pathsep)
    else:
        pathes = os.getenv('PATH').split(os.path.pathsep)
    
    cwd = os.getenv('PWD')
    if not cwd:
        cwd = os.getcwd()
    
    parents = [os.path.dirname(cwd)]
    while parents[-1] != os.path.dirname(parents[-1]):
        parents.append(os.path.dirname(parents[-1]))
    
    for possible_host in [cwd] + pathes + parents:
        path = os.path.join(possible_host, sub_path)
        if os.path.exists(path.replace('\\ ',' ')):
            print path
            return
    
if __name__ == '__main__':
    find_file(sys.argv[1])
