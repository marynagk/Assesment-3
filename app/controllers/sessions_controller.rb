class SessionsController < ApplicationController
  def create


    # @user = User.find_or_create_from_auth_hash(auth_hash)
    # self.current_user = @user
    # redirect_to '/'
    client_id = ENV['SLACK_CLIENT_ID']
    client_secret = ENV['SLACK_CLIENT_SECRET']
    code = params[:code]
    url = login_url
    sign_in_with_slack_link="https://slack.com/api/oauth.access?redirect_uri=#{url}&client_id=#{client_id}&client_secret=#{client_secret}&code=#{code}"
    response = RestClient.get(sign_in_with_slack_link)
    hash = JSON.parse response
    if user = User.find_by(slack_id: hash["user"]["id"]) then
    #do nothing
    else
      user = User.create(slack_id: hash["user"]["id"], slack_name: hash["user"]["name"], small_avatar: hash["user"]["image_48"], big_avatar: hash["user"]["image_192"])
    end
    @current_user = user
    session[:user_id] = @current_user.id
    redirect_to users_path, notice: 'Successfully logged in'
  end

  def destroy
    session.clear
    redirect_to "/", notice: 'You have signed out'
  end
end
