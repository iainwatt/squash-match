class CourtsController < ApplicationController

  def index
    courts = Court.all.to_json(:include => :centre)
    render json: courts
  end 

end
