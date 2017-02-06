describe TypoGen::SkipLetter do
  describe '.create' do
    it 'default generate' do
      result = TypoGen::SkipLetter.create('install')

      expect(result).to eq %w(nstall istall intall insall instll instal)
    end
  end
end
