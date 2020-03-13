class PlayersController < ApplicationController
  def index
    @players = Player.order(:name)
  end

  def show
    @player = Player.find(params[:id])
  end

  def search
    @players = Player.where("name LIKE '%#{params[:search_term]}%'")
  end
end
