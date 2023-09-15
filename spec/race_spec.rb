require './lib/candidate.rb'
require './lib/race.rb'

RSpec.describe Candidate do
  before(:each) do
    @candidate1 = Candidate.new({name: "Diana D", party: :democrat})
    @candidate2 = Candidate.new({name: "Roberto R", party: :republican})
    @race = Race.new("Texas Governor")
  end

  describe "#initialize" do
    it 'race exists' do
      expect(@race).to be_a(Race)
    end

    it 'has office and candidates empty array' do
      expect(@race.office).to eq("Texas Governor")
      expect(@race.candidates).to eq([])
    end
  end

  describe '#register_candidate method' do
    it 'returns candidates with attributes in an array' do
      expect(candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})).to be_a(Candidate)
      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
      expect(candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})).to be_a(Candidate)
      expect(@race.candidates).to eq([candidate1, candidate2])
    end
  end
end