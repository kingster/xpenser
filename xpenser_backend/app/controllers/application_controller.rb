class ApplicationController < ActionController::Base
  ##protect_from_forgery




  get '/eval' do
    "I got #{params[:command]}."
  end


end
