class Tictac < ApplicationRecord
  belongs_to :room

  WIN = [
    %w{0 1 2},
    %w{3 4 5},
    %w{6 7 8},
    %w{0 3 6},
    %w{1 4 7},
    %w{2 5 8},
    %w{6 4 2},
    %w{0 4 8},
  ]

  def tictactoe!()
    
  end
end
