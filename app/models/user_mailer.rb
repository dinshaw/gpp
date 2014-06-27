class UserMailer < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
    @body[:url]  = "http://www.thegamespeopleplaycambridge.com/activate/#{user.activation_code}"
  end

  def activation(user)
    setup_email(user)
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://www.thegamespeopleplaycambridge.com/"
  end

  def forgot_password(user)
    setup_email(user)
    @subject    += 'Request to change your password'
    @body[:url]  = "http://www.thegamespeopleplaycambridge.com/reset_password/#{user.password_reset_code}" 
  end

  protected
  def setup_email(user)
    @recipients  = "#{user.email}"
    @from        = "carol@thegamespeopleplaycambridge.com"
    @subject     = "The Games People Play"
    @sent_on     = Time.now
    @body[:user] = user
  end
end
  