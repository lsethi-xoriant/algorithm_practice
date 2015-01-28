#anagrams

#single word inputs
# def anagrams(first_word, second_word)
#   first_word = first_word.split('').sort
#   second_word = second_word.split('').sort

#   if first_word == second_word
#     true
#   else
#     false
#   end
# end

# p anagrams('cinema', 'iceman') == true
# p anagrams('superman', 'loltest') == false
# p anagrams('host', 'shot') == true
# p anagrams('aba', 'bab') == false
# p anagrams('train', 'rain') == false

#array of words to be compared

def check_anagrams(first_words, second_words)
  first_words.each_with_index do |word, index|
    if word.split('').sort == second_words[index].split('').sort
      puts true
    else
      puts false
    end
  end
end

check_anagrams(["cinema", "host", "aba", "train", "lol"], ["iceman", "shot", "bab", "rain", "llo"])
