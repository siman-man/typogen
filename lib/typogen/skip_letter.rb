module TypoGen
  class SkipLetter
    def self.create(word)
      word.size.times.map do |i|
        temp = word.dup
        temp[i] = ''
        temp
      end.uniq
    end
  end
end
