require 'minitest/autorun'
require './workout'

class TestExercise < Minitest::Test
  def test_to_s
    exercise = Exercise.new("dead lifts", 3, 8, 100)
    assert_equal "dead lifts: 3 sets of 8 reps at 100 lbs.", exercise.to_s, "to_s method failed"
  end
end
