# Word Cloud

# Write code that takes a long string and builds its word cloud data in a hash map ↴ , where the keys are words and the values are the number of times the words occured.**

# Think about capitalized words. For example, look at these sentences:

# 'After beating the eggs, Dana read the next step:' 'Add milk and eggs, then add flour and sugar.'

# What do we want to do with "After", "Dana", and "add"? In this example, your final hash should include one "add" with a value of 2. Make reasonable (not necessarily perfect) decisions about cases like "After" and "Dana".

# Assume the input will only contain words and standard punctuation.

def word_cloud(long_string)
  removed_punctuation = long_string.gsub(/[.,'":]/, " ")
  split_sentance = removed_punctuation.downcase.split(" ")
  word_counter = Hash.new(0)

  split_sentance.each do |word|
    word_counter[word] += 1
  end
  return word_counter
end


p word_cloud("After beating the eggs, Dana read the next step:' 'Add milk and eggs, then add flour and sugar.")
p word_cloud("hello, . my name is, is is IS chris, .")
p word_cloud("Why Carroll did not call for a handoff to Marshawn Lynch, who finished with 102 yards and averaged 4.3 yards per carry, will haunt the Seahawks and their fans forever.")

# not all punctuations are included in the removal.
# some UNSOLVED edge cases: contractions: 'don't', 'can't'....also, decimals like 4.3
# general working solution though