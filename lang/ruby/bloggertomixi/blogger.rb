#!/Users/luna/.rvm/bin/ruby
# -*- coding: utf-8 -*-

#このプログラムはbloggerの処理をまとめる
require 'mechanize'

class Blogger 
    attr_accessor :pages
    def initialize(site)
        @site_url = site
        @result_array = []
        @pages = []
        @agent = Mechanize.new()
    end

    def getUri
        site_handler = open(@site_url) do |file|
            Nokogiri::XML::Document.parse(file)
        end
        site_handler.search('entry//link').each do |node|
            @result_array << node.get_attribute('href')
        end
    end

    def getBody 
        @result_array.each do |uri|
            if(uri =~ /html$/) then
                page = @agent.get(uri)
                subject = page.at("h3[@class='post-title entry-title']").text.strip
                body = page.search("div[@class='post-body entry-content']").to_html.split("\n")
                @pages << {uri => {'subject' => subject, 'body' => body} }
            end
        end
    end
    def convertBody
        @pages.each do |page|
            puts page
            puts page['subject']
        end
    end

end
