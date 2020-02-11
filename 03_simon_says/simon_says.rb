def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, repeat_factor = 2)
	("#{word} " * repeat_factor).strip
end

def start_of_word(word, number_of_letters = 1)
	if number_of_letters == 0
		"Error: number_of_letters argument must be greater than 0."
	else	
		word[0..number_of_letters-1]
	end
end

def first_word(string)
	string.split.first
end

def titleize(string)
	string_split = string.split
	titleized = []
	string_split.each do |word|
		if (word != "and" and word != "the" and word != "over")
			titleized.push(word.capitalize)
		else
			titleized.push(word)
		end
	end
	titleized[0] = titleized[0].capitalize
	titleized.join(" ")
end
#write your code here
