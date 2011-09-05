# encoding: utf-8
# -*- coding: utf-8 -*-

require 'rubygems'
require 'xml/libxml'

#namespaceは.namespaceあたりで確認しようね。
ns = [
  'atom' => 'http://www.w3.org/2005/Atom'
]

afterfile = File::read('tluna-work-after.xml')
beforefile = File::read('tluna-work-before.xml')

after  = XML::Document.string afterfile
before = XML::Document.string beforefile

#afterのentryを一度配列へ
a = []
c = 0
#p after.root.namespace
p after.root.find_first('//atom:feed/atom:entry/atom:title',ns)

after.root.find('//atom:feed/entry',ns).each do |af|
  a << af.inner_xml
  c += 1
end

no = []
before.root.find('//atom:entry',ns).each do |be|
  if(a.index(be.inner_xml))
    no << be.inner_xml
  end
end

open('match.txt','w') do |match|
  a.each do |matchline|
    match << matchline
  end
end

p c
