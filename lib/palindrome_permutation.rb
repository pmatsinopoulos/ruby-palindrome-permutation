# frozen_string_literal: true

require_relative './string_permutations'

def palindrome?(str)
  str.reverse == str
end

def palindrome_permutation?(str)
  !string_permutations(str).lazy.find { |perm| palindrome?(perm) }.nil?
end
