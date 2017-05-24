module BookKeeping
  VERSION =  1
end

class Sieve
  attr_reader :upper_limit

  def initialize(upper_limit)
    @upper_limit = upper_limit
  end

  def generate_reference_array
    reference_array = (0..@upper_limit).to_a
    reference_array[0] = reference_array[1] = nil
    reference_array
  end

  def primes
    reference_array = generate_reference_array

    reference_array.each { |n|
      next unless n

      n_squared = n ** 2

      break if n_squared > @upper_limit

      n_squared.step(@upper_limit, n) { |x| reference_array[x] = nil }
    }

    reference_array.compact
  end
end