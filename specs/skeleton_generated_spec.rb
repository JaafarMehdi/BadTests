class SkeletonGenerated
  def call(user)
    # some code
    'I\'m doing my part!'
  end
end

describe SkeletonGenerated do
  subject { described_class.(user) }

  let(:user) {create :user }

  context 'when i get myself to test'
    it 'catchesa syntax error oupsie' do
      expect(result).to eq  'I\'m doing my part!'
    end
  end
end
