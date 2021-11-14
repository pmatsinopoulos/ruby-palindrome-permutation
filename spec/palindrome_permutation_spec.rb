RSpec.describe '.palindrome_permutation?' do
  {
    'tact coa' => false,
    'mmdaa' => true, # madam
    'cceraar' => true, # racecar
    'fat' => false
  }.each do |input, expected_output|
    context "when #{input}" do
      it "returns #{expected_output}" do
        expect(palindrome_permutation?(input)).to eq(expected_output)
      end
    end
  end
end

RSpec.describe '.string_permutations' do
  {
    'a' => ['a'],
    'ab' => ['ab', 'ba'],
    'abc' => ['abc', 'acb', 'bac', 'bca', 'cab', 'cba'],
    'abcd' => %w[abcd abdc acbd acdb adbc adcb bacd badc bcad bcda bdac bdca
                cabd cadb cbad cbda cdab cdba dabc dacb dbac dbca dcab dcba]
  }.each do |input_string, expected_permutations|
    context "when input string \"#{input_string}\"" do
      it "returns the permutations #{expected_permutations}" do
        expect(string_permutations(input_string)).to eq(expected_permutations)
      end
    end
  end
end
