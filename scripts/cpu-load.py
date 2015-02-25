#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
import sys
if os.name != 'posix': sys.exit('platform not supported')
import psutil

def get_cpu_percent():
  cpu = psutil.cpu_percent(interval=1)
  #return cpu
  return '[CPU] {0}%'.format(cpu)

def main():
  try:
    print get_cpu_percent()
  except (KeyboardInterrupt, SystemExit):
    pass

if __name__ == '__main__': main()
