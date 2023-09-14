class Candidate
attr_reader :name, :party, :votes
  def initialize(attributes, votes = 0)
    @name = attributes.dig(:name)
    @party = attributes.dig(:party)
    @votes = votes
  end

  def vote_for!
    @votes += 1
  end
end