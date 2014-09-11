class SearchController < ApplicationController

  def index
    if word = Word.find_by(name: params[:keyword])
      redirect_to word
    else
      @results = Search.for(params[:keyword])
    end
  end
end
