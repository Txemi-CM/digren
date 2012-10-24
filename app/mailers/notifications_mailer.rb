class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@digital-renaissance.org"
  default :to => "txemi@operamania.com"

  def new_message(message)
    @message = message
    mail(:subject => " Digital-Renaissance.org #{message.subject}")
  end
end
