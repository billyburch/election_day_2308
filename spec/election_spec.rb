require './lib/candidate.rb'
require './lib/race.rb'
require './lib/election.rb'

RSpec.describe Election do
  before(:each) do
    @candidate1 = Candidate.new({name: "Diana D", party: :democrat})
    @candidate2 = Candidate.new({name: "Roberto R", party: :republican})
    @race = Race.new("Texas Governor")
    @race1 = Race.new("Denver Mayor")
    @election = Election.new("1979")
  end

  describe '#initialize' do
    it 'election exists' do
      expect(@election).to be_a(Election)
      expect(@election.year).to eq("1979")
    end
  end

  describe '#races and add_race(new_race) method' do
    it 'returns Array of Race objects' do
      @election.add_race(@race)
      @election.add_race(@race1)
      expect(@election.races).to eq([@race, @race1])
    end
  end

  describe '#candidates' do
    it 'election has race and candidates' do
      candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = @race1.register_candidate!({name: "Roberto R", party: :republican})
      @election.add_race(@race)
      @election.add_race(@race1)
      require 'pry'; binding.pry
      expect(@election.candidates).to eq([candidate1, candidate2])
    end
  end
end