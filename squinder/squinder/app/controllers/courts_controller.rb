class CourtsController < ApplicationController

  def index
    courts = Court.all.to_json(:include => :centre)
    render json: courts
  end 

  def book_a_court

    book_court = Court.find(params[:id])
    book_court.availability = "booked"
    book_court.user_id = params[:court][:user_id]

    book_court.save
    render json: book_court 
    flash[:notice] = "Court was succesfully booked"
  end

end
