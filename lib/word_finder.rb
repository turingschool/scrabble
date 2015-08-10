class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end
  
end
