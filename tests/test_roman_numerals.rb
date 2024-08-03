require 'minitest/autorun'
require_relative '../src/roman_numerals'

class TestRomanNumerals < Minitest::Test
    def test_single_digit
        assert_equal 'I', to_roman(1)
    end
end
