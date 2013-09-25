class SessionsController < ApplicationController

    def create
      @user = User.from_omniauth(env['omniauth.auth'])
      sessions[:user_id] = @user.id
      redirect_to_root_path
    end

    def destroy
      session[:user_id] = nil
      redirect_to_root_path
    end
end
