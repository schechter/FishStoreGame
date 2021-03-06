class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    p request.env['omniauth.auth']
    @user = User.find_for_twitter_oauth(request.env['omniauth.auth'], current_user)
    if @user.persisted?
      flash[:notice] = 'Successfully connected to Twitter'
    else
      flash[:error] = 'Unable to connected to Twitter'
    end

    redirect_to root_path   #maybe change to user path or something else..

  end
end

