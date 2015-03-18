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

    @values.each { |k, v| output += v if num.modulo(k).zero? }

    to_return += (output.empty? ? num.to_s : output) + "\n"
  end
end
