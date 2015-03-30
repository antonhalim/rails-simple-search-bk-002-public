class WordsController < ApplicationController

	def index
		@word = Search.for(params["keyword"])
		if @word.size == 1
			redirect_to "/words/#{@word.first.id}"
		else
			render "index"
		end
	end

	def show
		@word = Word.find(params[:id])
	end

	# def search
	# 	@word = Search.for(keyword).first
	# 	if @word
	# 		redirect_to "/words/#{@word.id}"
	# 	else
	# 		"No results matching that query."
	# 	end
	# end

end
