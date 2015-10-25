require_relative 'show'

puts "Please enter a show name:"
name = gets.chomp
show = Show.new(name)
show.list_show
puts "Select show: "
num = gets.chomp
show.select_show(num)
show.episode
