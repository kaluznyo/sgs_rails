class GamesController < ApplicationController

  def index
    @q = Game.ransack(params[:q])
    @games = @q.result.page(params[:page]).per(25)
  end

  def show
    @game = Game.find(params[:id])
  end

end