class Exercise
  attr_accessor :name, :sets, :reps, :weight

  def initialize(name, sets, reps, weight)
    @name = name
    @sets = sets
    @reps = reps
    @weight = weight 
  end

  def to_s
    "#{@name}: #{@sets} sets of #{@reps} reps at #{@weight} lbs."
  end
end

class WorkoutOfTheDay
  attr_accessor :date, :exercises

  def initialize(date)
    @date = date
    @exercises = []
  end

  def add_exercise(exercise)
    @exercises.push(exercise)
  end

  def to_s
    workout = "WOTD on #{@date}\n"
    @exercises.each do |exercise|
      workout += exercise.to_s + "\n"
    end
    puts workout
  end
end

def menu
  puts "Welcome to Your Workout!"
  puts "1. Enter New Workout"
  puts "2. All Workouts"
  puts "3. Exit"

  print "Please choose an option: "
  choice = gets.chomp.to_i

  case choice
    when 1
      enter_new_workout
    when 2 
      view_all_workouts
    when 3
      puts "See ya!"
      exit
    else
      puts "Oops, invalid option! Please try again."
    end
  end 

  def enter_new_workout
    puts "Enter date of workout (DD-MM-YYYY): "
    date = gets.chomp
    workout_of_the_day = WorkoutOfTheDay.new(date)

    loop do 
      puts "Enter exercise name (or type 'done' to finish):"
      name = gets.chomp
      break if name.downcase == 'done'

      print "Enter number of sets:"
      sets = gets.chomp.to_i

      print "Enter number of reps:"
      reps = gets.chomp.to_i

      print "Enter weight:"
      weight = gets.chomp.to_i

      exercise = Exercise.new(name, sets, reps, weight)
      workout_of_the_day.add_exercise(exercise)
    end

    $workouts.push(workout_of_the_day)
    puts "Workout has been logged!"
  end

  def view_all_workouts
    if $workouts.empty?
      puts "No workouts yet."
    else $workouts.each do |workout|
      puts workout
    end
  end

$workouts = []

while true
  menu
end
