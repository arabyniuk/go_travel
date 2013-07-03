class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "abalkonskiy@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[travelsite] #{message.subject}")
  end
end
