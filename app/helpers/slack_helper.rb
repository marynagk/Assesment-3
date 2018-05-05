module SlackHelper
  def sign_in_with_slack_button
    client_id = ENV['SLACK_CLIENT_ID']
    url = 'http://localhost:3000/login'
    %Q(<a href="https://slack.com/oauth/authorize?redirect_uri=#{url}&scope=identity.basic,identity.avatar&client_id=#{client_id}&team=T98FPAUH5"><img alt="Sign in with Slack" height="40" width="172" src="https://platform.slack-edge.com/img/sign_in_with_slack.png" srcset="https://platform.slack-edge.com/img/sign_in_with_slack.png 1x, https://platform.slack-edge.com/img/sign_in_with_slack@2x.png 2x" /></a>).html_safe
  end

  def sign_in_with_slack_link
    client_id = ENV['SLACK_CLIENT_ID']
    client_secret = ENV['SLACK_CLIENT_SECRET']
    code = params[:code]
    %Q(<a href="https://slack.com/api/oauth.access?redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fusers&scope=identity.basic,identity.avatar&client_id=#{client_id}&client_secret=#{client_secret}&code=#{code}"><img alt="Sign in with Slack" height="40" width="172" src="https://platform.slack-edge.com/img/sign_in_with_slack.png" srcset="https://platform.slack-edge.com/img/sign_in_with_slack.png 1x, https://platform.slack-edge.com/img/sign_in_with_slack@2x.png 2x" /></a>).html_safe
  end
  
end
