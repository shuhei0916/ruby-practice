# require 'minitest/autorun'
require_relative '../src/roman_numerals'

RSpec.describe 'Roman Numerals Converter' do
    shared_examples 'a roman numeral converter' do |numeral, roman|
        it "convert #{numeral} to #{roman}" do
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
end