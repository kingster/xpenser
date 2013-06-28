require 'rubygems' # Only if installed via RubyGems


class UsersController < ApplicationController



  def validate_user_name

    @data =  params

    @msg = Time.now
  end





end
