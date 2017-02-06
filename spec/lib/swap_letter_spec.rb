describe TypoGen::SwapLetter do
  describe '.create' do
    it 'default denerate' do
      result = TypoGen::SwapLetter.create('sample')

      expect(result).to eq %w(asmple smaple sapmle samlpe sampel)
    end
  end
end
