class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@orangeCount = 0
	end

	def oneYearPasses
		@age += 1
		@height += 0.5
		@orangeCount = 0

		if @age == 20
			print "\nYour Tree has died of old age! :-( I hope you enjoyed the oranges. If you didn't pick any to eat, tough shit!\n"
			exit
		elsif @age > 3 && @age < 11
			@orangeCount += 3
		elsif @age > 10
			@orangeCount += 5
		end

		return "Your tree is now #{@age} years old, #{@height} metres tall and has #{@orangeCount} oranges on it."
	end

	def height
		@height
	end

	def countTheOranges
		@orangeCount
	end

	def pickAnOrange
		if @orangeCount == 0
			return "No oranges to pick!"
		else
			@orangeCount -= 1
			if @orangeCount == 1
				print "The orange was delicious!\n\n"
				return "Your tree now has only 1 orange left"
			else
				print "The orange was delicious!\n\n"
				return "Your tree now has #{@orangeCount} oranges on it"
			end
		end
	end

end