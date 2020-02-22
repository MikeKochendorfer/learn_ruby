class Book
	attr_reader :title

	def title=(string)
		string_split = string.split
		titleized = []
		not_capitalized = ["and","the","over","a","an","in","of"]
		string_split.each do |word|
			if not_capitalized.include? word
				titleized.push(word)
			else
				titleized.push(word.capitalize)
			end
		end
		titleized[0] = titleized[0].capitalize
		@title = titleized.join(" ")
	end
end


