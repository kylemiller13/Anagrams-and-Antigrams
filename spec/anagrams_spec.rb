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
  it('will check to see that two words are anagrams if they have capital letters') do
    anagram = Anagram.new("Tea","Eat")
    expect(anagram.is_anagram).to(eq("is an anagram"))
  end
  it('will check to see that two words contain vowels') do
    anagram = Anagram.new("pkmn", "kmpn")
    expect(anagram.is_anagram).to(eq("is NOT an anagram"))
  end
  it("will check to see spaces shouldn't count") do 
    anagram = Anagram.new("r u b y ", "b u r y")
    expect(anagram.is_anagram).to(eq("is an anagram"))
  end
end