module SlackHelper
  def sign_in_with_slack_button
    client_id = ENV['SLACK_CLIENT_ID']
    %Q(<a href="https://slack.com/oauth/authorize?redirect_uri=http%3A%2F%2Flocalhost%3A3000&scope=identity.basic,identity.email,identity.team,identity.avatar&client_id=#{client_id}"><img alt="Sign in with Slack" height="40" width="172" src="https://platform.slack-edge.com/img/sign_in_with_slack.png" srcset="https://platform.slack-edge.com/img/sign_in_with_slack.png 1x, https://platform.slack-edge.com/img/sign_in_with_slack@2x.png 2x" /></a>).html_safe
  end

end
