class GamesController < ApplicationController
  def index
    if session[:user_id]
        @user = User.find(session[:user_id])
    end
    @games = Game.all
  end
end
