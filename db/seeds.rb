require_relative '../config/environment'
require_relative '../app/models/word'

File.read('dictionary.txt').split("\n").each do |word|
  Word.create(:value => word, :length => word.length)
end
