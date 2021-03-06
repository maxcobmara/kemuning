class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def microsoft
    @user = User.from_omniauth(request.env["omniauth.auth"])
    puts "----------------- "
    puts @user.inspect
    #puts "----------------- "
    #puts request.env["omniauth.env"].inspect
    #response_params = request.env['omniauth.auth'].inspect
    #puts response_params

    #@user = User.from_omniauth(request.env["omniauth.env"]) unless request.env["omniauth.env"].nil?

    if @user&.persisted?
        sign_in_and_redirect @user, event: :authentication
    else
        flash[:alert] = @user.errors.full_messages.join("<br>")
        Rails.logger.error "Couldn't login user: " + @user.errors.inspect
        redirect_back(fallback_location: root_path, allow_other_host: false) # Don't redirect back to Microsoft
    end
  end
end
