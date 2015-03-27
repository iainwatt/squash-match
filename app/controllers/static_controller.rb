class StaticController < ApplicationController
  def index
     gon.current_user = current_user
  end
end
