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
      expect(user.first_name).to eq('Joe')
      expect(user.last_name).to eq('Doe')
      # or in this case use Expect(user).to have_attributes(...)
    end
  end
end
