class CodeOverProse
  def call(input)
    raise 'we dont do reading here' if input.is_string?
    true # binary as all things should be
  end
end

describe CodeOverProse do
  subject(:result) { described_class.(input) }

  context 'for numerical data'
    let(:input) { 101110001 }
    it 'succeess' do
      expect(result).to eq  true
    end
  end

  context 'for string data'
    let(:input) { 'block segment descriptions matter!' }
    it 'fails' do
      expect(result).to raise_error
    end
  end
end
