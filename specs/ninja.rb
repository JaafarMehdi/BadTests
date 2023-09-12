class Ninja
  def see
    raise 'you cant see a ninja'
  end
end

describe Ninja do
  subject(:result) { described_class.new.see }

  context 'When looking at the ninja'
    it 'is invisible' do
      expect(result).to raise_error
    end
  end
end

# remember the error is in the file_name
