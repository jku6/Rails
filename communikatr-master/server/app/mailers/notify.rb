class Notify < ActionMailer::Base
  default from: "chyld.medford@gmail.com"
  def notification(to, msg)
    @greeting = msg
    mail :to => to
  end
end
