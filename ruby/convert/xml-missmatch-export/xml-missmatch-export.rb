# encoding: utf-8
# -*- coding: utf-8 -*-

require 'rubygems'
require 'xml/libxml'

$KCODE = 'u'

#でっち上げのnamespace
ns = [
  'atom' => 'http://blogspot.com',
  'os' => 'http://blogspot.com'
]

beforefile = File::read('tluna-work-before.xml')
afterfile = File::read('tluna-work-after.xml')

afterparser = XML::Parser.string afterfile
beforeparser = XML::Parser.string beforefile

after = afterparser.parse
before = beforeparser.parse

puts after.root.find('//atom:entry[2]',ns)
