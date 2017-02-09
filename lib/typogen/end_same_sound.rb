module TypoGen
  class EndSameSound
    PATTERN_LIST = [
        %w(dar der),
        %w(se ce),
        %w(sion tion),
        %w(tar tor ter),
        %w(ser cer),
        %w(val vel),
        %w(rize lize),
        %w(ry ly),
    ].freeze

    def self.create(word)
      typo_list = []

      PATTERN_LIST.each do |pattern|
        pattern.combination(2).each do |from, to|
          if word =~ /#{from}$/
            typo_list << word.sub(/#{from}$/, to)
          elsif word =~ /#{to}$/
            typo_list << word.sub(/#{to}$/, from)
          end
        end
      end

      typo_list
    end
  end
end
