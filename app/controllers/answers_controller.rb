class AnswersController < ApplicationController
  def create
    @user = current_user
    @proposal = Proposal.find(params[:proposal_id])
    @answer = Answer.new(user_id: @user.id, proposal_id: @proposal.id)
    @answer.save!
  end
end
