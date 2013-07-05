require 'rubygems' # Only if installed via RubyGems
require 'sinatra'

class UsersController < ApplicationController

  #def show
  #
  #  @data = "hi"
  #  render :validate
  #
  #
  #end

  def index
      puts "hello"

  end

  def validate_user_name

    begin


      client = Mysql2::Client.new(:host => "localhost", :username => "root" , :database => "expense_tracker")
      results = client.query(  "select * from users" )
      @data =  "We have #{results} row(s) \n <br>"
      results.each do |row|
        @data = "#{@data}#{row['username']}  \n <br> "
      end

      rescue Mysql2::Error => e
        puts e
      ensure
        client.close if client

      @msg = Time.now
    end

  end





end












