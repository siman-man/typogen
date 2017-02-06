module TypoGen
  class SwapLetter
    def self.create(word)
      (word.size-1).times.map do |i|
        temp = word.dup

        temp[i], temp[i+1] = temp[i+1], temp[i]
        temp
      end.uniq
    end
  end
end
