require 'pry-byebug'

#Code asking the user for input 
puts "Enter your message here"
text = gets.chomp.downcase 

#dictionary array 
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Method that will create new hash
def word_counter(text, dictionary)
  array = text.split(/[^-a-zA-Z]/)
  frequency_of_words_in_text = Hash.new()
  array.each do |word|
    next if word.empty? == true
    next if dictionary.count(word) == 0 
     frequency_of_words_in_text[word] = array.count(word)
  end
  if frequency_of_words_in_text.empty? == true
    puts "None of the words you entered are part of this specific dictionary"
  else
  alphabetized = frequency_of_words_in_text.sort {|word1, word2| word1 <=> word2 }
  print alphabetized.to_h
  end
end

word_counter(text,dictionary)

