class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  # def take_turn
  #   show_sequence
  #   guess = []
  #   @sequence_length.each do |idx|
  #     guess << require_sequence
  #   end

  # end

  def show_sequence
    add_random_color
    puts @seq
    sleep(3)
  end

  def require_sequence
    puts "Enter the sequence"
    input = gets.chomp
    sleep(5)
    return input
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message
    puts "Game is over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
  
end
