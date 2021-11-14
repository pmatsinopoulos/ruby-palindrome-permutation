# frozen_string_literal: true

def string_permutations(str)
  return [str] if str.length <= 1

  result = []
  str.each_char.with_index do |char, index|
    left_part = index.zero? ? '' : str[0..index - 1]
    right_part = str[index + 1..]
    result += string_permutations("#{left_part}#{right_part}").map { |perm| "#{char}#{perm}" }
  end
  result
  # str.split('').permutation
end
