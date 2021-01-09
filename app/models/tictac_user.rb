class TictacUser < ApplicationRecord
  belongs_to :user
  belongs_to :tictac
end
