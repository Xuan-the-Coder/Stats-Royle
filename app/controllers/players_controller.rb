class PlayersController < ApplicationController
  def index
    @students = Student.order(:name)
  end

end
