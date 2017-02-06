describe TypoGen::EndSameSound do
  describe '.create' do
    it 'device' do
      typo_list = TypoGen::EndSameSound.create('device')

      expect(typo_list).to eq %w(devise)
    end

    it 'calendar' do
      typo_list = TypoGen::EndSameSound.create('calendar')

      expect(typo_list).to eq %w(calender)
    end
  end
end
