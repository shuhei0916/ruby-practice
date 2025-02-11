# require 'minitest/autorun'
require_relative '../src/roman_numerals'

RSpec.describe 'Roman Numerals Converter' do
    shared_examples 'a roman numeral converter' do |numeral, roman|
      it "converts #{numeral} to #{roman}" do
        expect(to_roman(numeral)).to eq(roman)
      end
    end
  
    describe 'single symbols' do
      it_behaves_like 'a roman numeral converter', 1, 'I'
      it_behaves_like 'a roman numeral converter', 5, 'V'
      it_behaves_like 'a roman numeral converter', 10, 'X'
      it_behaves_like 'a roman numeral converter', 50, 'L'
      it_behaves_like 'a roman numeral converter', 100, 'C'
      it_behaves_like 'a roman numeral converter', 500, 'D'
      it_behaves_like 'a roman numeral converter', 1000, 'M'
    end
  
    describe 'combinations' do
      it_behaves_like 'a roman numeral converter', 2, 'II'
      it_behaves_like 'a roman numeral converter', 3, 'III'
      it_behaves_like 'a roman numeral converter', 4, 'IV'
      it_behaves_like 'a roman numeral converter', 6, 'VI'
      it_behaves_like 'a roman numeral converter', 9, 'IX'
      it_behaves_like 'a roman numeral converter', 11, 'XI'
      it_behaves_like 'a roman numeral converter', 19, 'XIX'
      it_behaves_like 'a roman numeral converter', 44, 'XLIV'
      it_behaves_like 'a roman numeral converter', 99, 'XCIX'
      it_behaves_like 'a roman numeral converter', 2021, 'MMXXI'
    end

  describe 'edge cases' do
    it 'returns an empty string for 0' do
      expect(to_roman(0)).to eq('')
    end

    it 'handles negative numbers' do
      expect(to_roman(-1)).to eq('')
    end

    it 'handles very large numbers' do
      expect(to_roman(4000)).to eq('')
    end

    it 'handles non-integer inputs' do
      expect { to_roman('a') }.to raise_error(ArgumentError)
      expect { to_roman(3.14) }.to raise_error(ArgumentError)
    end
  end
end
  