require_relative "player.rb"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = Player.new(name1,2) #    (0 1 2 3 4 5)  6
    @player2 = Player.new(name2,1) # 12 (11 10 9 8 7)
    @currentPlayer = @player1
    @cups = Array.new(14){Array.new()}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup,idx|
      if idx!=6 && idx!= 13
        @cups[idx] = [:stone,:stone,:stone,:stone]
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos > 14
      raise "Invalid starting cup"
    end
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    if @player1.name == current_player_name
      enemy = 13
    else
      enemy = 6
    end
    stones = @cups[start_pos]
    idx = start_pos-1

    while !stones.empty?
      idx+=1
      idx = idx % 14
      if idx != enemy
        @cups[idx] << stones.pop
      end
    end
    render
    
    next_turn(idx)
  end

  def next_turn(idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

    if idx == 13 || idx == 6 
      return :prompt
    elsif @cups[idx].length == 1
      return :switch
    else
      # idx += 1 if idx <= 6
      return idx
    end
  end
  

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    tot1 = 0
    @cups[0..5].each do |cup|
      tot1 += 1 if !cup.empty?
    end
    tot2 = 0
    @cups[7..11].each do |cup2|
      tot2 +=1 if !cup2.empty?
    end
    tot1 == 0 || tot2 == 0
  end

  def winner
    score1 = @cups[6].length
    score2 = @cups[13].length
    return :draw if score1 == score2
    score1 > score2 ? @player1.name : @player2.name
  end
end
