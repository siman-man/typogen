module TypoGen
  class Typo

    # @param [String] word correct word
    # @return [Array] typo list
    def self.create(word, options: {})
      typo_list = []

      typo_list |= SkipLetter.create(word)
      typo_list |= SwapLetter.create(word)
      typo_list |= StartSameSound.create(word)
      typo_list |= EndSameSound.create(word)

      typo_list - [word]
    end
  end
end
