class ImpliciteDefaults
  def show_payment_information
    raise 'admin_only' unless @user.admin?
    secret_payment_data
  end
end

FactoryBot.define do
  factory :user do
    username { Faker::Name.masculine_name }
    admin { false } # or even depend on database default instead
  end
end

describe ImpliciteDefaults do
  subject(:result) { described_class.new(user: user).show_payment_information }

  let(:user) {create :user }

  context 'When user is admin'
    let(:user) {create :user, admin: true }

    it 'works' do
      expect(result).to eq stubbed_payment_data
    end
  end

  context 'When user is NOT admin'
    it 'raises error' do
      expect(result).to raise_error
    end
  end
end
