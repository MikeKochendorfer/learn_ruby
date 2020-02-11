def translate(string)
	string_split = string.split
	vowels = ["a","e","i","o","u"]
	translated = []
	for word in string_split
		first_letter = word[0].downcase
		if vowels.include?(first_letter)
			translated << "#{word}ay"
		else
			consonants = []
			consonants << word[0]
			if word[1] == 'u' or vowels.include?(word[1]) == false 
				consonants << word[1]
				if word[2] == 'u' or vowels.include?(word[2]) == false
					consonants << word[2]
				end
			end
			translated << "#{word[consonants.length..-1] + consonants.join + "ay"}"
		end
	end
	translated.join(" ")
end

#if it begins with anything else move that to the end of the word and ad 'ay' after it

#write your code here
