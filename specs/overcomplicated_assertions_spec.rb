class OvercomplicatedAssertions
  def call(user, first, last)
    user.update(first_name: first, last_name: last)
  end
end

describe OvercomplicatedAssertions do
  subject(:result) { described_class.(user: user, params) }

  let(:user) {create :user }
  let(:params) { {first: 'Joe', last: 'Doe'} }

  context 'Update user'
    it 'work for name change' do
      expect([user.first_name, user.last_name]).to eq(%w[Joe Doe])
    end
  end
end
