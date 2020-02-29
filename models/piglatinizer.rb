def piglatinize (word)
  if word.size == 1	
    word	    exclude = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
  elsif Vowels.include?(word[0])	    vowels = ["a", "e", "i", "o", "u"]
    word + 'ay'	
  elsif Consonants.include?(word[0]) && 	    if exclude.include?(word)
    Consonants.include?(word[1])	      word
    word[2..-1] + word[0..1] + 'ay'	    elsif vowels.include? word[0]
  elsif word[0..1] == "qu" 	      word << "ay"
    word[2..-1]+"quay"	    else
  elsif word[0..2] == "squ"	      consonants = ""
     word[3..-1]+"squay"	      while !vowels.include?(word[0])
  else Consonants.include?(word[0])	        consonants << word[0]
    word[1..-1] + word[0..0] + 'ay'	        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end	  end
end	


  def to_pig_latin (sentence)	  def to_pig_latin (sentence)
    sentence.split.map(&method(:piglatinize)).join(' ')	    sentence.split.map{|word| piglatinize(word)}.join(' ')
  end	  end
end 	end 
  