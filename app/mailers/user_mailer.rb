class UserMailer < ActionMailer::Base
  default :from => "admin@pms.com"

  def welcome_mail
      mail(:to => "a@b.com",
            :subject => "Welcome to PMS")
  end
end

