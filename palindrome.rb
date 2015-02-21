# Palindrome Algorithm

def palindrome(word)
  return true if word.length <= 1

  word_letters = word.split('')
  if word_letters[0] == word_letters[-1]
    word_letters.shift
    word_letters.pop
  else
    return false
  end
    palindrome(word_letters.join(''))
end

p palindrome("hannah") == true
p palindrome("tiffany") == false
p palindrome("christopher") == false
p palindrome("abcdedcba") == true
p palindrome("abccba") == true