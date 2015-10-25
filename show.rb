require_relative 'parse_helper'

class Show
  include ParseHelper
  attr_accessor :show_name, :search_url, :show_select
  def initialize(name)
    @name = name.to_s
    @base_url = 'http://cn163.net/?s='
    @search_url = @base_url + @name
    @show_list = matchlinks(@name,@search_url)
    @show_link = String.new
    @episode_list = Array.new
  end
  def list_show
    @show_list.each_with_index do |link,idx|
      puts "#{idx+1}.|#{link.content}"
    end
  end

  def select_show(num)
    num = num.to_i
    puts "You selected #{@show_list[num-1].content}"
    @show_link = @show_list[num-1].first[1]
  end

  def episode
    if @show_link != nil
      @episode_list = matchurl("ed2k",@show_link)
      @episode_list.map {|link| puts "#{link.content}\n#{link.first[1]}"}
    else puts "Please select a season first!"
    end
  end

end
