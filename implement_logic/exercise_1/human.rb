class Human
  
	def introduce_yourself(name, surname)
		if name != nil and surname != nil
			puts 'my name is ' + name + surname
		else
			puts 'sorry bro my name aint full, can no do'
		end	
	end

end 

test = Human.new
test.introduce_yourself("michal", "cebula")

test.introduce_yourself(nil, nil)

