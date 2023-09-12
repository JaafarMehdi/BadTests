class TrikyCasesGenerator

  def call(magic_number)
    return 7/magic_number
  end
end

describe BeHappyOrElse do
  subject(:result) { described_class.(magic_number) }

  context 'with correct inpit'
    let(:magic_number) { 7 }
    
    it 'just works' do
      expect(result).to eq 1
    end
  end

  context 'with invalid tata'
    let(:magic_number) { 0 }

    it 'will raise exception' do
      expect(result).to raise DivideByZeroErrorYouIdiot
    end
  end
end
