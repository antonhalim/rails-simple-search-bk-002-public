class WordsController < ApplicationController

	def index
		@word = Search.for(params.permit(:keyword)[:keyword])
		if @word.size == 1
			redirect_to "/words/#{@word.first.id}"
		else
			render "index"
		end
	end

	def show
		@word = Word.find(params[:id])
	end

end
