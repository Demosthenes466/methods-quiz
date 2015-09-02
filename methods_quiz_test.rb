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

end
