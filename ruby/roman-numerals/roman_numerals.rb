class Integer
  def to_roman
    outcome = ''
    dict = {
      M: 1000,
      D: 500,
      C: 100,
      L: 50,
      X: 10,
      V: 5,
      I: 1
    }
    # outcome += 'I' * self
    # outcome.gsub('IIIII', 'V').gsub('IIII', 'IV')
    num = self
    unless num == 0
      dict.each_pair do |key, val|
        while num >= val
          num-=val
          outcome += key.to_s
        end
      end
    end
    outcome
    # outcome.gsub('I'*5, 'V').gsub('I'*4, 'IV')
  end
end
# MDCLXVI
