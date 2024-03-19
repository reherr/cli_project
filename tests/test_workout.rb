require 'minitest/autorun'
require './workout'

class TestExercise < Minitest::Test
  def setup
    @exercise = Exercise.new("dead lifts", 3, 8, 100)
  end

  def test_to_s
    expected_output = "Workout has been logged!"
    assert_equal expected_output, @exercise.to_s, "to_s method failed"
  end
end
