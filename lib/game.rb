class Game
  attr_accessor :roll
  attr_writer :first_roll

  def status
    if [7, 11].include?(roll)
      "won"
    else
      "lost"
    end
  end

  def point
    roll
  end
end