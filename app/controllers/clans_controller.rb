class ClansController < ApplicationController
  def index
    @clans = Clan.order(:name).page(params[:page])
  end

  def show
    @clan = Clan.find(params[:id])
  end
end
