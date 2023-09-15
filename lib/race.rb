class Race
  attr_reader :office, :candidates
  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate_data)
    candidate = Candidate.new(candidate_data)
    @candidates << candidate
    candidate
  end
end