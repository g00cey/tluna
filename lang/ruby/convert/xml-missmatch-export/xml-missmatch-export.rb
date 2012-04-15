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

beforearray = []
barray_id = []
#p after.root.namespace
#p after.root.find_first('//atom:feed/atom:entry/atom:title',ns)

p before.class
before.root.find('//atom:feed/atom:entry',ns).each do |before|
  beforearray <<  before
end

no = []
after.root.find('//atom:feed/atom:entry',ns).each do |after|
  beforearray.reject! do |before| 
    before == after
  end
end


File::open('missmatch.txt' , 'w') do |miss|
  miss.write beforearray
end

File::open('barray_id.txt' , 'w') do |miss|
  miss.write barray_id
end

=begin
open('match.txt','w') do |match|
  a.each do |matchline|
    match << matchline
  end
end
=end
