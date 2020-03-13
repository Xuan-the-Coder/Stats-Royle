class BattlesController < ApplicationController
  def index
    @battles = Battle.all.page(params[:page])

  end

  def show
    @battle = Battle.find(params[:id])
  end
end
