require 'spec_helper'
require 'fizzbuzz_advanced'

describe 'Advanced Fizzbuzz' do
  it 'should correctly calculate numbers' do
    # Given some example multiples/keywords hard-coded into the class
    fizz = FizzbuzzAdvanced.new

    # When I ask for the program to calculate certain numbers
    calc_1 = fizz.calculate(1)
    calc_3 = fizz.calculate(3)
    calc_5 = fizz.calculate(5)
    calc_7 = fizz.calculate(7)
    calc_10 = fizz.calculate(10)
    calc_13 = fizz.calculate(13)
    calc_15 = fizz.calculate(15)
    calc_30 = fizz.calculate(30)
    calc_50 = fizz.calculate(50)
    calc_105 = fizz.calculate(105)

    # Then I should see couple combinations in the list of results
    calc_1.must_match(/1/)
    calc_3.must_match(/Fizz/)
    calc_5.must_match(/Buzz/)
    calc_7.must_match(/Sivv/)
    calc_10.must_match(/Buzz/)
    calc_13.must_match(/Grrr/)
    calc_15.must_match(/FizzBuzz/)
    calc_30.must_match(/FizzBuzz/)
    calc_50.must_match(/Buzz/)
    calc_105.must_match(/FizzBuzzSivv/)
  end
end
