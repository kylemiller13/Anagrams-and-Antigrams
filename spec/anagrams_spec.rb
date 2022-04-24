require('rspec')
require('pry')
require('anagrams')

describe(Anagram) do
  describe('#is_anagram') do
    it('will return a message telling user it is an anagram') do
      anagram = Anagram.new("ruby","bury")
      expect(anagram.is_anagram).to(eq("is an anagram"))
    end
  end
  it('will check to see that two words are anagrams no matter the casing') do
    anagram = Anagram.new("Tea","Eat")
    expect(anagram.is_anagram).to(eq("is an anagram"))
  end
  it('will check to see that two words contain vowels') do
    anagram = Anagram.new("pkmn", "kmpn")
    expect(anagram.is_anagram).to(eq("You need to input actual words!"))
  end
  it('will check wheather they are actually antigrams') do
    anagram = Anagram.new("hi","bye")
    expect(anagram.is_anagram).to(eq("These words have no letter matches and are antigrams"))
  end
  it("will check to see spaces & punctuation shouldn't count") do 
    anagram = Anagram.new("The Morse Code", "Here come dots!")
    expect(anagram.is_anagram).to(eq("is an anagram"))
  end
end