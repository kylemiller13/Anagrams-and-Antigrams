#!/usr/bin/env ruby
require('pry')
class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1.delete(' ').downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split(//).sort
    @word2 = word2.delete(' ').downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split(//).sort
  end
  def vowel_checker()
    vowels = ["a","e","i","o","u","y"]
    split_arry = @word1
    split_arry.each do |letter|
      if vowels.include?(letter)
        return true
      end
    end
    return false
  end

  def antigram_checker()
    phrase1 = @word1
    phrase2 = @word2
    phrase1.each do |letter|
      if phrase2.include?(letter)
        return true
      end
    end
    return false
  end

  def is_anagram()
    word1_arry = @word1
    word2_arry = @word2
    if antigram_checker() == false
      return "These words have no letter matches and are antigrams"
    elsif vowel_checker() == false
      return "You need to input actual words!"
    elsif word1_arry == word2_arry
      return "is an anagram"
    else
      return "is NOT an anagram"
    end
  end
end

