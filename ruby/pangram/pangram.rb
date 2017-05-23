class Pangram
  def self.pangram? phrase
    alpha = ("a".."z").to_a
    if phrase != ""
      phrase = phrase.downcase.split("")
      alpha.delete_if { |e| phrase.include? e }
      true if alpha.size == 0
    else
      false
    end
  end
end

module BookKeeping
  VERSION = 4
end
