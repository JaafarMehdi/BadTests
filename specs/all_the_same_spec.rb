class AllTheSame
  def call(complex_params_class)
    return 42 # hehe they wont know i'm not doing all the fancy cases
  end
end

describe AllTheSame do
  subject(:result) { described_class.(complex_params_class) }

  context 'when we have the hard scenario nr1'
    let(:params) {create :abstraction_of_complicated_params_interdependency_1 }
    it 'will return what i want to know' do
      expect(result).to eq  42
    end
  end

  context 'when we have the hard scenario nr2'
    let(:params) {create :abstraction_of_complicated_params_interdependency_2 }
    it 'will return what i want to know' do
      expect(result).to eq  42
    end
  end
end
