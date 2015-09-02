module MethodsQuiz
	
	# TODO - write has_teen?
	def has_teen?(a, b, c)
		if((a >= 13 && a <= 19) || (b >= 13 && b <= 19) || (c >= 13 && c <= 19))
			return true
		else 
			return false
		end

	end

	# TODO - write not_string
	def not_string?(str)
		if(str.start_with?("not"))
			return str
		else
			 "not" + str
		end
	end

	# TODO - write icy_hot?
	def icy_hot?(a, b)
		if((a > 100) && (b < 100))
			return true
		elsif((b > 100) && (a < 100))
			return true
		else
			return false
		end
	end
	
	# TODO - write closer_to
	def closer_to?(target, a, b)
		if((target - a).abs > (target - b).abs)
			return b
		elsif((target - a).abs < (target - b).abs)
			return a
		elsif((target - a).abs == (target - b).abs)
			return 0
		end
	end

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end