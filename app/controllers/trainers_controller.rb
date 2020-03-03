class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    render json: trainers.to_json(:include => {
      :pokemon => {:only => [:nickname, :species, :id, :trainer_id]}
    }, :only => [:name, :id])
  end
end
