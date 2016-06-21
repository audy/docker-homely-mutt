#!/usr/bin/python

import os

def get_password():
    ''' implement a function that returns password '''
    return os.getenv('GMAIL_PASSWORD')
