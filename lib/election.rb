class Election
  attr_reader :year, :races, :candidates, :vote_counts

  def initialize(year)
    @year = year
    @races = []
    @candidates = []
    @vote_counts = {}
  end

  def add_race(new_race)
    @races << new_race
  end

  def candidates
    @candidates << @races.candidates
  end
  
  def vote_counts

  end
end
