
class PigLatinizer
  attr_accessor :phrase	

  def initialize(phrase)	
    @phrase = phrase	
  end	


  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])	
  end


  def translate(word)	  def piglatinize(word)
    if self.is_vowel?(word)	    if self.is_vowel?(word)
      word.concat('way')	      word.concat('way')
    else	    else
      word.concat(word.slice!(/^[^aeiou]*/i || "")) + 'ay'	      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end	    end
  end	  end


  #if the word starts with a vowel add yay to the end	  #if the word starts with a vowel add yay to the end
  #if the word starts with consonant(s) add the consonants up to the next vowel and ay to the end	  #if the word starts with consonant(s) add the consonants up to the next vowel and ay to the end
  def translator	  def to_pig_latin(phrase)
    words = @phrase.split	    phrase.split.collect {|word| piglatinize(word)}.join(' ')
    new_string = words.map do |word|	
      translate(word)	
    end	
    new_string.join(' ')	
  end	  end
end	end