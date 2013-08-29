class Game
  def roll=(value)
    @roll = value
  end

  def roll
    @roll
  end

  def first_roll=(value)
  end

  def status
    if roll == 7 || roll == 11
      "won"
    else
      "lost"
    end
  end
end