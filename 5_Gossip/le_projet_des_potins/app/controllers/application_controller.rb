class ApplicationController < ActionController::Base
  include SessionsHelper
  include GossipLikesHelper

  def authenticate_user
    unless current_user
      puts params
      @user = User.new
      render 'sessions/new'
    end

  end
  
end