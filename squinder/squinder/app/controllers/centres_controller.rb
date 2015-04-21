class CentresController < ApplicationController
 
  def index
   centre = Centre.all.to_json(:include => :courts)
   render json: centre
  end

  # centers = Center.all.to_json(:include => [:courts, :another])
  # render json: centers

  # if you have 2 requests for data like above and want to package them into one variable them make a hash like below
  # respones = {key_1: variable_name, key_2: variable_name }

  # any non association data we need from rails we need to get from a custom route 

end

