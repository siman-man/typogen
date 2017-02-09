module TypoGen
  class StartSameSound
    PATTERN_LIST = [
        %w(in im),
        %w(con com),
        %w(clo cro),
        %w(cou coa),
        %w(car cur),
    ].freeze

    def self.create(word)
      typo_list = []

      PATTERN_LIST.each do |pattern|
        pattern.combination(2).each do |from, to|
          if word =~ /^#{from}/
            typo_list << word.sub(/^#{from}/, to)
          elsif word =~ /^#{to}/
            typo_list << word.sub(/^#{to}/, from)
          end
        end
      end

      typo_list
    end
  end
end