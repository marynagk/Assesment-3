module SlackHelper
  def sign_in_with_slack_button

    client_id = ENV['SLACK_CLIENT_ID']
    # url = 'http://localhost:3000/login'
    url = 'https://cagang.herokuapp.com/login'
    scope = 'identity.basic,identity.avatar'
    team = 'T98FPAUH5"'

    %Q(<a href="https://slack.com/oauth/authorize?redirect_uri=#{url}&scope=#{scope}&client_id=#{client_id}&team=#{team}>
      <img alt="Sign in with Slack" height="40" width="172" src="https://platform.slack-edge.com/img/sign_in_with_slack.png" srcset="https://platform.slack-edge.com/img/sign_in_with_slack.png 1x, https://platform.slack-edge.com/img/sign_in_with_slack@2x.png 2x" /></a>).html_safe
  end
end
