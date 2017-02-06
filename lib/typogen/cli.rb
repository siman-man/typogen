module TypoGen
  class CLI
    def self.run(word, options: {})
      typo_list = Typo.create(word, options: options)

      puts typo_list
    end
  end
end
