class UserMailer < ActionMailer::Base
  default :from => "admin@pms.com"

  def welcome_email(user)
    @user = user
    @url = "http://pms.com
    mail (:to  => user.email,
         :subject => "WelCome To Project Management App")
  end
end

