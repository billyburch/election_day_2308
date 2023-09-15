class Candidate
attr_reader :name, :party, :votes
  def initialize(candidate_details, votes = 0)
    @name = candidate_details[:name]
    @party = candidate_details[:party]
    @votes = votes
  end

  def vote_for!
    @votes += 1
  end
end