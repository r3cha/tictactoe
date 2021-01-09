class TictactoeController < ApplicationController

  before_action :set_room, only: :move
  
  def move
    respond_with @game.tictactoe!(@user, params[:position])
  end

  def create_room
    respond_with Room.create
  end

  private

  def set_game
    @game = Tictac.find_create_by(uid: params[:room_uid])
  end
end
