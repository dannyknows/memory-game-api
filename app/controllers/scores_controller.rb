class ScoresController < ApplicationController
before_action :set_score, only: [:show, :update, :destroy]

  def index 
    @scores = Score.all.order(id: "desc")
    render json: @scores
  end 

  def show 
    render json: @scores
  end 

  def create 
    Score.create(score_params)
    render json: "your score", status: 200 
  end 

  def update 
# for sake of crud, update name?
  end 

  def destroy
  
  end 

  private 

  def score_params 
    params.require(:score).permit(:score, :name, :time_stamp)
  end 

  def set_score 
    @score = Score.find(params[:id])
  end 
end
