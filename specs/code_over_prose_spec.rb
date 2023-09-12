class CodeOverProse
  def call(input)
    raise 'we dont do reading here' if input.is_string?
    true # binary as all things should be
  end
end

describe CodeOverProse do
  subject(:result) { described_class.(input) }

  context 'who reade these anyway'
    let(:input) { 101110001 }
    it 'succeess' do
      expect(result).to eq  true
    end
  end

  context 'copy/pasted and not changed'
    let(:input) { 'block segment descriptions matter!' }
    it 'succeess' do
      expect(result).to raise_error
    end
  end
end
