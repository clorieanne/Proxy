from lettuce import step
from nose.tools import assert_equal, assert_in
from proxy.proxy import *
import os

@step(u'Given I have a proxy')
def given_i_have_a_proxy(step):
  proxy = Proxy()

@step(u'When I run the program')
def when_i_run_the_program(step):
  os.system('python proxy.py')

@step(u'Then it will generate the output')
def then_it_will_generate_the_output(step):
  result = []
  for row in step.hashes:
    result.append(str(row))

  text = []
  a = open('myfile', 'r')
  for row1 in step.hashes:
    b = a.readline().splitlines()
    text.append(str(row1))

  assert_equal(result, text) 