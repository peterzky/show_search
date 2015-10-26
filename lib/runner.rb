require_relative 'show'

while true
  puts "[x] to exit, [s] to start"
  cmd = gets.chomp
  case cmd
  when "x"
    puts "Program shut down"
    break
  when "s"
    puts "restart program"
    puts "pleas input show name:"
    name = gets.chomp
    show = Show.new(name)
    show.list_show
    puts "please select:"
    num = gets.chomp
    show.select_show(num)
    show.episode
    puts "input pattern"
    pattern = gets.chomp
    show.filter_result(pattern)
    show.copylink
  end
end
