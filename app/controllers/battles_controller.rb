class BattlesController < ApplicationController
  def index
    @battle = Battle.all
  end
end
