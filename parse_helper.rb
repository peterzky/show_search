require 'rubygems'
require 'bundler/setup'
require 'nokogiri'
require 'open-uri'
require 'uri'

module ParseHelper
  def matchlinks(name,url)
    show_list = Array.new
    ascii_url = URI::escape(url)
    doc = Nokogiri::HTML(open(ascii_url))
    doc.css('a').each do |link|
      show_list << link if link.content =~ Regexp.new(name)
      end
      show_list
    end

  def matchurl(patten,url)
    show_list = Array.new
    ascii_url = URI::escape(url)
    doc = Nokogiri::HTML(open(ascii_url))
    doc.css('a').each do |link|
      show_list << link if link.first[1] =~ Regexp.new(patten)
      end
      show_list
    end

end
