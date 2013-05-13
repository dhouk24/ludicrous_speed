require_relative '../../config/environment'

class Word < ActiveRecord::Base

  def self.find_anagrams(input_word)
    find_words_of_equal_length(input_word)
    @results = []
    @store_array.each do |comparison|
      if sort_letters(comparison.value) == sort_letters(input_word) && comparison.value != input_word
        @results << comparison
      end
    end
    @results
  end

  def self.find_words_of_equal_length(input_word)
    @store_array = []
    Word.find_all_by_length(input_word.length).each do |result|
      @store_array << result
    end
  end

  def self.sort_letters(input_word)
    input_word.split("").sort.join("")
  end

end
