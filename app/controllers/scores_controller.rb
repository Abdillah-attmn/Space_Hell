class ScoresController < ApplicationController
  before_action :set_score, only: :show

  def show
  end

  def compute_score
    @user = current_user
    @score = Score.new(user: @user)
    @game = Game.find(params[:game_id])
    @score.game = @game
    point = 0
    # answer = Answer.find(params[:user_id, :proposal_id])
    @game.answers.select { |answer| answer.user == @user }.each do |answer|
      point += 1 if answer.proposal.correct == true
    end
    @score.point = 10 * point
    redirect_to score_path(@score), notice: "Score is #{@score}" if @score.save!
  end

  private

  def set_score
    @score = Score.find(params[:id])
  end
end
