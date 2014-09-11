class Search
  def self.for(keyword)
    search = "#{keyword.downcase}"
    Word.where('LOWER(name) LIKE ?', search)
  end
end
