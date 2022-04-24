#!/usr/bin/env ruby
require('./lib/anagrams')
puts "Type a word"
word1 = gets.chomp
puts "Type another word"
word2 = gets.chomp
anagram = Anagram.new("#{word1}","#{word2}")
puts anagram.is_anagram