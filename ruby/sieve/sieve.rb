require 'prime'
class Sieve
  attr_reader :number

  def initialize number
    @number = number
    @primes = []
  end

  def primes
    Prime.take_while {|p| p <= number }
  end
end

module BookKeeping
  VERSION = 1
end
