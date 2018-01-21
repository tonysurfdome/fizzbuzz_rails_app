class FindFizzBuzz
  def self.call(min, max)
    (min..max).to_a.map do |number|
      fizz_or_buzz(number)
    end
  end

  def self.fizz_or_buzz(value)
    result = value
    if value % 3 == 0
      result = 'Fizz'
    elsif value % 5 == 0
      result = 'Buzz'
    end
    result
  end
end
