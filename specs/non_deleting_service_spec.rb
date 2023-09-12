class NonDeletingService
  def call(user)
    user.update(vip_key: 'Haha Deleted') #bug
  end
end

describe NonDeletingService do
  subject(:result) { described_class.(user: my_precious_user) }

  let(:my_precious_user) {create :user, vip_key: 'not_deleted' }

  context 'called with vip user'
    it 'wont delete precious data' do
      # Todo: fix the error catched here
      result
      expect(my_precious_user.vip_key).to eq  'not_deleted'
    end
  end
end
