#!/usr/bin/ruby
require 'rubygems'
require 'hpricot'
require 'mechanize'
require 'kconv'

class Crawler
	def initialize(wait_time, internal, ngwords)
		@agent = WWW::Mechanize.new
		@wait_time = wait_time
		@internal = internal
		@ngwords = nwwords
		@links = []
	end

	def http_connect(url)
		print "OK\n"
		@page = @agent.get(url)
	end

	def crawl(root)
		@page = @agent.get(root)
		@page.links.with.href(%r{}).each do | link |
			if link.href =~ /^http/
				url = link.href
			else
				%r|http://([^/]*)/| =
$KCODE = "u";

prefecture = {"北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府 ","大阪 府 ","兵庫県 ","奈良県 ","鳥取県","島根県","岡山県","広島県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本 県","大分県","宮崎県","鹿児島県","沖縄県","香港"}
prefecture.each do | pre |
	puts pre
end

