describe TypoGen::StartSameSound do
  describe '.create' do
    it { expect(TypoGen::StartSameSound.create('import')).to eq %w(inport) }
    it { expect(TypoGen::StartSameSound.create('component')).to eq %w(conponent) }
    it { expect(TypoGen::StartSameSound.create('clown')).to eq %w(crown) }
    it { expect(TypoGen::StartSameSound.create('coarse')).to eq %w(course) }
    it { expect(TypoGen::StartSameSound.create('carve')).to eq %w(curve) }
  end
end