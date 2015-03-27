class CourtsController < ApplicationController

  def index
    courts = Court.all.to_json(:include => :centre)
    render json: courts
  end 

  # def book_a_court
  #   book_court = Court.find
  # end

end
