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

    @values.each do |k, v|
      output += v if num % k == 0
    end

    output.empty? ? to_return += num.to_s : to_return += output
    to_return += "\n"

    to_return
  end
end
