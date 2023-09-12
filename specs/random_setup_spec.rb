class RandomSetup
  def update_favorite_sport(sport)
    @user.update(fav_sport: sport)
  end
end

FactoryBot.define do
  factory :user do
    username { Faker::Name.masculine_name }
    fav_sport { Faker::Sport.sport } # defaults are good for test were it's not the focus
  end
end

describe RandomSetup do
  subject(:result) { described_class.new(user: user).update_favorite_sport(param) }

  let(:user) {create :user, sport: 'Soccer'}
  let(:param) { 'Running' }

  context 'Change my fav sport'
    it 'always works' do
      expect(result).to change(user.sport)
    end
  end
end
