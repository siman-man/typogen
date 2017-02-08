describe TypoGen::EndSameSound do
  describe '.create' do
    it { expect(TypoGen::EndSameSound.create('calendar')).to eq %w(calender) }
    it { expect(TypoGen::EndSameSound.create('device')).to eq %w(devise) }
    it { expect(TypoGen::EndSameSound.create('slicer')).to eq %w(sliser) }
    it { expect(TypoGen::EndSameSound.create('interval')).to eq %w(intervel) }
    it { expect(TypoGen::EndSameSound.create('camelize')).to eq %w(camerize) }
    it { expect(TypoGen::EndSameSound.create('family')).to eq %w(famiry) }
  end
end
