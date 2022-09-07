class UsersController < ApplicationController
  def show
    @user = current_user
    @level = 1
    games = @user.games
    @level = games.size + 1
  end
end
