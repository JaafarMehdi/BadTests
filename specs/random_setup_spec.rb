class RandomSetup
  def update_favorite_sport(sport)
    @user.update(fav_sport: sport)
  end
end

FactoryBot.define do
  factory :user do
    username { Faker::Name.masculine_name }
    fav_sport { Faker::Sport.sport }
  end
end

describe RandomSetup do
  subject(:result) { described_class.new(user: user).update_favorite_sport(param) }

  let(:user) {create :user }
  let(:param) { Faker::Sport.sport } # can randomly be the same

  context 'Change my fav sport'
    it 'sometimes works' do
      expect(result).to change(user.sport)
    end
  end
end
