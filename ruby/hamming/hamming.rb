module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute first_strand, second_strand
    raise ArgumentError.new("Strand lengths don't match") unless first_strand.count == second_strand.count
          (first_strand.each_char.with_index.to_a - second_strand.each_char.with_index.to_a).count
  end
end
