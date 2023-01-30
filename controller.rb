require_relative 'productivity_app'

class ProductivityAppController
  def initialize
    @productivity_app = ProductivityApp.new
  end

def run
  loop do
    puts "What you put in, is what you get out. Input -> Output. Welcome to the app!"
    puts "Please choose an option:"
    puts "1. Schedule a time block"
    puts "2. Add a habit"
    puts "3. Track a habit"
    puts "4. Add an actionable"
    puts "5. Retrieve actionables"
    puts "6. Quit"
    option = gets.chomp.to_i

    case option
    when 1
      puts "Enter date (YYYY-MM-DD)"
      date = gets.chomp
      puts "Enter time block:"
      time_block = gets.chomp
      schedule_time_block(date, time_block)
      puts "Congratulations. Time block scheduled."
    when 2
      puts "Enter date (YYYY-MM-DD)"
      date = gets.chomp
      puts "Add a habit:"
      habit = gets.chomp
      add_habit(date, habit)
      puts "Great. That habit has been added for you."
    when 3
      puts "Enter date (YYYY-MM-DD)"
      date = gets.chomp
      puts "Track a habit:"
      habit = gets.chomp
      track_habit(date, habit)
      puts "Awesome. You've tracked that habit."
    when 4
      puts "Enter date (YYYY-MM-DD)"
      date = gets.chomp
      puts "Add an actionable"
      actionable = gets.chomp
    when 5
    when 6
      break
    else puts "Whoops! That won't work."
    end
end
