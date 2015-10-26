require 'watir'
require 'rubygems'
require 'bundler/setup'
require 'open-uri'

browser = Watir::Browser.new :chrome
browser.goto "http://www.youku.com"
browser.text_field(id: 'headq').set("原创精选")
browser.button(type: 'submit').click
