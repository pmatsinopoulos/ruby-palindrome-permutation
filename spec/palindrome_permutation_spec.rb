RSpec.describe '.palindrome_permutation?' do
  {
    'tact coa' => false,
    'mmdaa' => true, # madam
    'cceraar' => true, # racecar
    'fat' => false,
    # 'sod dege e egoes' => true # do geese see god. THIS IS REALLY slow
  }.each do |input, expected_output|
    context "when #{input}" do
      it "returns #{expected_output}" do
        expect(palindrome_permutation?(input)).to eq(expected_output)
      end
    end
  end
end
