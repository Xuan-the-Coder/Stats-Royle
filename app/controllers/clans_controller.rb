class ClansController < ApplicationController
  def index
    @clans = Clan.order(:name)
  end

  def show
    @clan = Clan.find(params[:id])
  end
end
