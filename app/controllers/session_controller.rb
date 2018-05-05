class SessionController < ApplicationController
  def create


    # @user = User.find_or_create_from_auth_hash(auth_hash)
    # self.current_user = @user
    # redirect_to '/'
    client_id = ENV['SLACK_CLIENT_ID']
    client_secret = ENV['SLACK_CLIENT_SECRET']
    code = params[:code]
    sign_in_with_slack_link="https://slack.com/api/oauth.access?redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Flogin&scope=identity.basic,identity.avatar&client_id=#{client_id}&client_secret=#{client_secret}&code=#{code}"
    response = RestClient.post(sign_in_with_slack_link)
    byebug
  end


  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
