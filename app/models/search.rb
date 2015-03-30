class Search

	def self.for(string)
		Word.all.select{|word| word if word.name.include?(string)}
	end
end
