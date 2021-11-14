# frozen_string_literal: true

def palindrome?(str)
  str.reverse == str
end

def palindrome_permutation?(str) # really slow
  str.split('').permutation do |perm|
    return true if palindrome?(perm)
  end
  false
end
