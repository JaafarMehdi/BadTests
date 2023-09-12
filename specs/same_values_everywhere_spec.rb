class SameValuesEverywhere
  def upper_name(user)
    user.adress.upcase # oupsie wrong field
  end
end

describe SameValuesEverywhere do
  subject(:result) { described_class.(user: user) }

  let(:user) {create :user, name: 'random string', adress: 'random string' }

  context 'false positive land'
    it 'return uppercase name' do
      expect(result).to eq  'RANDOM STRING'
    end
  end
end
