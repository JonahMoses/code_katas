class Squares

  def initialize(int)
    @int = int
  end

  def square_of_sum
    sum = (1..@int).inject(:+)
    sum * sum
  end

  def sum_of_squares
    (1..@int).inject { |accumulator, num| accumulator += (num * num) }
  end

  def difference
    return 0 if @int == 0
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
