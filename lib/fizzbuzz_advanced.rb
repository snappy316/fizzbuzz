class FizzbuzzAdvanced
  def initialize
    @values = {
      3 => "Fizz",
      5 => "Buzz",
      7 => "Sivv",
      13 => "Grrr"
    }
  end

  def calculate(num)
    to_return = ""
    output = ""

    @values.each { |factor, word| output += word if num.modulo(factor).zero? }

    to_return += (output.empty? ? num.to_s : output) + "\n"
  end
end
