class PlayersController < ApplicationController
  def index
    @players = Player.order(:name)
  end

  def show
    @players = Player.find(params[:id])
  end
end
