#!/usr/bin/env ruby
require('pry')
class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1.downcase().delete(" ")
    @word2 = word2.downcase().delete(" ")
  end
  def vowel_checker()
    vowels = ["a","e","i","o","u","y"]
    split_arry = @word1.split('')
    split_arry.each do |letter|
      if vowels.include?(letter)
        return true
      end
    end
    return false
  end

  def antigram_checker()
    phrase1 = @word1.split('')
    phrase2 = @word2.split('')
    phrase1.each do |letter|
      if phrase2.include?(letter)
        return true
      end
    end
    return false
  end

  def is_anagram()
    word1_arry = @word1.split('').sort
    word2_arry = @word2.split('').sort
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
anagram = Anagram.new("ruby","bury")
p anagram.is_anagram
