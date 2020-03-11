class ClansController < ApplicationController
  def index
    @clan = Clan.all
  end
end
