require 'rails_helper'

RSpec.describe Search, :type => :model do
  context '#for' do 
    before do 
      @panda = Word.create(name: "panda")
      @llama = Word.create(name: "llama")
      @iguana = Word.create(name: "iguana")
    end
    
    it 'returns results in an array' do 
      expect(Search.for("ll")).to eq([@llama])
    end

    it 'can return multiple results' do 
      expect(Search.for("an")).to include(@iguana && @panda)
    end

    it 'returns an empty array if it finds nothing' do 
      expect(Search.for("x")).to eq([])
    end
  end
end
