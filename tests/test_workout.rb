require 'minitest/autorun'
require './workout'

class TestExercise < Minitest :: Test
  def test_to_s
    exercise = Exercise.new
    assert_equal "dead lifts: 3 sets of 8 reps at 100 lbs.", workout.to_s(dead lifts, 3, 8, 100), "to_s method failed"
  end
end
