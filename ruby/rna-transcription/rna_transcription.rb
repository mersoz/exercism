module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna strand
    comp_strand = ""

    complement_dict = {
      G: "C",
      C: "G",
      T: "A",
      A: "U"
    }

    key_array = complement_dict.keys.map { |e| e.to_s  }

    if (strand.chars - key_array).size == 0
      strand.each_char do |chr|
        comp_strand += complement_dict[chr.to_sym]
      end
    end
    comp_strand
  end
end
