class ApplicationController < ActionController::Base
  protect_from_forgery
  def application
  end

  def twitter_client(user)
    Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['xlnYEjZazQYb9fJphYPuw']
      config.consumer_secret = ENV['FDlyTI5F45barrFzDxlhlDavFpVssNj7WP4Hblqy74']
      config.access_token = user.oauth_token
      config.access_token_secret = user.oauth_secret
    end
  end

  rescue_from ActionController::RoutingError, :with => :render_not_found

  def routing_error
    raise ActionController::RoutingError.new(params[:path])
  end

  def render_not_found
    render :template => "misc/404", :layout => false
  end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

  helper_method :current_user

end
