#! /usr/bin/env python

import pty
import os

k8056_device = '/tmp/tty_fake_k8056'
mode = 'wb'
shell = 'cat'
read_bytes = 1024

with open(k8056_device, mode):
  def read(fd):
    data = os.read(fd, read_bytes)
    print('got: {:s}'.format(repr(data)))
    return data

  print('reading from {:s}...'.format(k8056_device))
  pty.spawn(shell, read)
