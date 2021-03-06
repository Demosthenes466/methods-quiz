require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here
	def test_has_teen
		assert_equal false, @m.has_teen?(1, 2, 3)
		assert_equal true, @m.has_teen?(0, 10, 14)
		assert_equal false, @m.has_teen?(21, 8, 8)
	end

	def test_not_string
		assert_equal "notpotato", @m.not_string?("notpotato")
		assert_equal "notpotato", @m.not_string?("potato")
	end

	def test_icy_hot
		assert_equal false, @m.icy_hot?(50, 75)
		assert_equal false, @m.icy_hot?(50, 100)
		assert_equal true, @m.icy_hot?(50, 101)
		assert_equal false, @m.icy_hot?(101, 102)
		assert_equal true, @m.icy_hot?(101, 60)
	end

	def test_closer_to
		assert_equal 9, @m.closer_to?(10, 9, 8)
		assert_equal 5, @m.closer_to?(10, 5, 4)
		assert_equal 7, @m.closer_to?(8, 10, 7)
		assert_equal 9, @m.closer_to?(100, 9, 8)
	end

	def test_two_as_one
		assert_equal true, @m.two_as_one?(1, 2, 3)
		assert_equal false, @m.two_as_one?(1, 2, 2)
		assert_equal true, @m.two_as_one?(3, 2, 1)
		assert_equal false, @m.two_as_one?(12, 2, 1)
	end

	def test_pig_latinify
		assert_equal "otatopay", @m.pig_latinify("potato")
		assert_equal "ananabay", @m.pig_latinify("banana")
		assert_equal "rashtay", @m.pig_latinify("trash")
		assert_equal "otatopay", @m.pig_latinify("Potato")
		assert_equal "antway", @m.pig_latinify("Ant")
		assert_equal "*ss", @m.pig_latinify("ass")
		assert_equal "f*ck", @m.pig_latinify("fuck")
		assert_equal "*ss", @m.pig_latinify("ass")
		assert_equal "tw*t", @m.pig_latinify("twat")
		assert_equal "*sshole", @m.pig_latinify("asshole")
	end

end
