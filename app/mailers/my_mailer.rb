class MyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_mailer.new_donation_notification.subject
  #
  def new_donation_notification(donation)
    @greeting = "Hi gang"
    @donation = donation
      mail to: ENV["DEFAULT_EMAIL_FROM"], subject: "Success! New donation has been made."
    end

  def thanks_for_donation(donation, email)
    @greeting = "Hi gang"
    @donation = donation
    @email=email
      mail to: @email, subject: "Thank you for your generousity!"
  end
end
