class HighScores
  attr_reader :scores
  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    #@scores.sort.last
    # Improvement after checking Community solutions
    scores.max
  end
  def personal_top_three
    #@scores.sort.reverse.take(3)
    # Improvement after checking Community solutions
    scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end