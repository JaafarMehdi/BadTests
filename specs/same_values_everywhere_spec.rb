class SameValuesEverywhere
  def upper_name(user)
    user.adress.upcase # oupsie wrong field
  end
end

describe SameValuesEverywhere do
  subject(:result) { described_class.(user: user) }

  let(:user) {create :user, name: 'Joe doe', adress: 'bialystok, poland' }

  context 'Meaningful test land'
    it 'return uppercase name' do
      # TODO: fix the bug found with this test
      expect(result).to eq  'JOE DOE'
    end
  end
end
