class Notifications < ActionMailer::Base
  default from: "thejonku@gmail.com"

  
  def welcome(user)
    @user = user
    @greeting = "Hi"

    mail to: "thejonku@gmail.com", :subject => "Welcome to My Awesome Pirate Site"
  end

  
  def logoff
    @greeting = "Hi"

    mail to: "thejonku@gmail.com", :subject => "I noticed you logged off"
  end
end
