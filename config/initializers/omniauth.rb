Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, ENV['SLACK_APP_ID'], ENV['SLACK_APP_SECRET'], scope: 'identity.basic', team: 'T98FPAUH5'
end
