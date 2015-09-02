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
	def two_as_one?(a, b, c)
		if((a + b == c) || (a + c == b) || (b + c == a))
			return true
		else
			return false
		end
	end


	# TODO - write pig_latinify
	def pig_latinify(str)
		str.downcase!
		str.lstrip
		str.rstrip
		if((str[0] == "a") || (str[0] =="o") || (str[0] =="u")|| (str[0] =="i")|| (str[0] =="y"))
			str = str + "way"
			# str.slice!(0)
			return str
		else
			str = str + str[0] + "ay"
			str.slice!(0)
			return str
		end
	end


end