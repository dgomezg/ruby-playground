require 'rspec'
require 'email'
require 'email_verification_job'

RSpec.describe 'EmailVerificationJob' do

  describe '#perform' do
    it 'finds the email by id' do
      expect(Email).to receive(:find).with(12)
      allow(UserMailer).to receive(:send_verification_email)

      EmailVerificationJob.new.perform(12)
    end

    it 'sends the verification email' do
      email = double("Email")
      #allow(Email).to receive(:find).with(12).and_return(email)
      allow(Email).to receive(:find).with(12) { email }
      allow(UserMailer).to receive(:send_verification_email)

      expect(UserMailer).to receive(:send_verification_email).with(email)

      EmailVerificationJob.new.perform(12)
    end
  end
end
