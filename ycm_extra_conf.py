import os
import os.path
import fnmatch
import logging
import ycm_core
import re

C_BASE_FLAGS = [
        '-Wall',
        '-Wextra',
        '-Werror',
        '-Wno-long-long',
        '-Wno-variadic-macros',
        '-fexceptions',
        '-ferror-limit=10000',
        '-DNDEBUG',
        '-std=c11',
        '-I/usr/lib/',
        '-I/usr/include/'
        ]

CPP_BASE_FLAGS = [
        '-Wall',
        '-Wextra',
        '-Wno-long-long',
        '-Wno-variadic-macros',
        '-fexceptions',
        '-ferror-limit=10000',
        '-DNDEBUG',
        '-std=c++1z',
        '-xc++',
        '-I/usr/lib/',
        '-I/usr/include/'
        ]

C_SOURCE_EXTENSIONS = [
        '.c'
        ]

CPP_SOURCE_EXTENSIONS = [
        '.cpp',
        '.cxx',
        '.cc',
        '.m',
        '.mm'
        ]

C_HEADER_EXTENSIONS = [
        '.h',
        '.hxx',
        '.hpp',
        '.hh'
        ]

CPP_HEADER_EXTENSIONS = [
        '.hxx',
        '.hpp',
        '.hh'
        ]

def IsCFile(filename):
    extension = os.path.splitext(filename)[1]
    return extension in C_SOURCE_EXTENSIONS + C_HEADER_EXTENSIONS

def IsCPPFile(filename):
    extension = os.path.splitext(filename)[1]
    return extension in CPP_SOURCE_EXTENSIONS + CPP_HEADER_EXTENSIONS


def FlagsForFile(filename):
    if IsCFile(filename):
        final_flags = C_BASE_FLAGS
    if IsCPPFile(filename):
        final_flags = CPP_BASE_FLAGS

    return {
            'flags': final_flags,
            'do_cache': True
            }
