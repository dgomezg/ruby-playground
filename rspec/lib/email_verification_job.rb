require 'email'
class EmailVerificationJob
  def perform(email_id)
    email = Email.find(email_id)
    UserMailer.send_verification_email(email)
  end
end
