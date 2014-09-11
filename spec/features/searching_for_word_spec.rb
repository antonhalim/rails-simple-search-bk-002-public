require 'rails_helper'

describe 'searching for word', :type => :feature do
  before do 
    @panda = Word.create(name: "panda")
    @llama = Word.create(name: "llama")
    @iguana = Word.create(name: "iguana")
  end

  context 'returning found records' do 
    context 'an exact search' do
      before do 
        visit '/'
        fill_in(:keyword, with: "iguana")
        click_button("Search")
      end 

      it 'redirects the exact word queried for' do 
        expect(current_path).to eq("/words/#{@iguana.id}")
      end

      it 'displays the name of the word' do 
        expect(page).to have_content(@iguana.name)
      end
    end

    context 'a fuzzy search' do 
      before do
        visit '/'
        fill_in(:keyword, with: "an")
        click_button("Search")
      end

      it 'returns a list of words containing the query' do 
        expect(page).to have_content(@iguana.name && @panda.name)
      end
    end
  end

  context 'returning no records' do 
    before do
      visit '/'
      fill_in(:keyword, with: "xx")
      click_button("Search")
    end

    it 'displays a message if no results found' do 
      expect(page).to have_content("No results matching that query.")
    end
  end

end