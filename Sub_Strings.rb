require 'pry-byebug'

#dictionary array 
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

binding.pry 

#Method that will create new hash
def word_counter(text, dictionary)
  array = text.split(/[^-a-zA-Z]/)
  frequency_of_words_in_text = Hash.new(0)
  array.each do |word|
    next if word.empty? == true || dictionary.include?(word) == false
     frequency_of_words_in_text[word] += 1
     dictionary.each do |dict_word|
      if word.include?(dict_word) == true && word != dict_word
        frequency_of_words_in_text[dict_word] += 1
      end
  end
  end
  if frequency_of_words_in_text.empty? == true
    puts "None of the words you entered are part of this specific dictionary"
  else
  alphabetized = frequency_of_words_in_text.sort {|word1, word2| word1 <=> word2 }
  print alphabetized.to_h
  end
end


word_counter("Howdy partner, sit down! How's it going?", dictionary)

#word_counter("Howdy partner, sit down! How's it going?",dictionary) 
#returns 

