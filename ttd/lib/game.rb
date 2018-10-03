class Game
  attr_reader :towers

  # disc1 = 1
  # disc2 = 2
  # disc3 = 3

  def initialize
    @towers = [[3, 2, 1], [], []]
  end


  def move(from, to)
    if is_valid_move?(from, to)
      num = towers[from].pop
      towers[to].push(num)
    else
      raise "Invalid move"
    end
  end

  # def current_tower(tower)
  #   @tower = tower
  # end
  #
  # def destination_tower(tower)
  #   @tower = tower
  # end

  def won?

  end

  def get_input
    input = gets.chomp
  end


  private

  def is_valid_move?(current_tower, destination_tower)
    if move(to).is_empty?
      return true
    elsif from[-1] < to[-1]
      return true
    end

    false
  end

end
