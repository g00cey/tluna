# encoding: utf-8
# -*- coding: utf-8 -*-

require 'rubygems'
require 'xml/libxml'

$KCODE = 'u'

#でっち上げのnamespace
ns = [
  'atom' => 'http://www.w3.org/2005/Atom'
]

afterfile = File::read('tluna-work-after.xml')
beforefile = File::read('tluna-work-before.xml')

after  = XML::Document.string afterfile
before = XML::Document.string beforefile

after.parse
before.parse

p after.root.first_find('/atom:entry',ns)
