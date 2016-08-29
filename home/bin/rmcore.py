#!/usr/bin/python

import sys
import os
import argparse

parser = argparse.ArgumentParser(description='Find and remove core dump files')
parser.add_argument('folder', nargs='?', default=os.getcwd(), help='folder to start in (default is current folder)')
parser.add_argument('-r', '--recurse', dest='recurse', help='recurse subfolders', action='store_true')
args = parser.parse_args()

if not os.path.isdir(args.folder):
	print 'Starting folder does not exist'
	sys.exit(1)

if args.recurse:
	os.system('find '+args.folder+' -name core -type f -print -exec rm {} \;')
	sys.exit(0)

filename = os.path.join(args.folder, 'core')
if os.path.isfile(filename):
	print filename
	os.remove(filename)
