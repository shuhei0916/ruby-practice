# require 'minitest/autorun'
require_relative '../src/roman_numerals'

RSpec.describe 'An example group' do
    it 'single symbol test' do
        expect('I').to eq(to_roman(1))
    end
    it 'single symbol test' do
        expect('V').to eq(to_roman(5))
    end

end