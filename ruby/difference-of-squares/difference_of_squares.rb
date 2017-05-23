class Squares
  attr_reader :number

  def initialize number
    @number = number
  end

  def square_of_sum
    if @number > 0
      (1..@number).inject(:+) ** 2
    else
      @number
    end
  end

  def sum_of_squares
    if @number > 0
      (1..@number).map { |e| e**2  }.inject(:+)
    else
      @number
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
