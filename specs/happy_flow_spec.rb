class BeHappyOrElse
  def call(user)
    if user.is_happy
      return "Have a free coupon: #{api.generate_coupon}"
    else
      pp 'I will be deleting you files'
      function_that_delete_files
    end
  end
end

describe BeHappyOrElse do
  subject(:result) { described_class.(user: my_precious_user) }

  let(:my_precious_user) {create :user, is_happy: true }

  context 'called with happy user'
    it 'is a perfectly safe class' do
      expect(result).to eq  'Have a free coupon: some_mocked_coupon'
    end
  end
end
