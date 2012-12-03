class MessagesController < ApplicationController
  before_filter :allow_cross_origin_access

  def message
    address = params[:address]
    message = params[:message]
    case params[:msgtype]
    when 'twitter'
      Twitter.update("#{address} #{message}")
    when 'texting'
      client = Twilio::REST::Client.new(TW_SID, TW_TOK)
      client.account.sms.messages.create({:from => '+19177461483', :to => address, :body => message})
    when 'mailmsg'
      Notify.notification(address, message).deliver
    end

    render :json => params
  end

  private
  def allow_cross_origin_access
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = '*'
  end
end
