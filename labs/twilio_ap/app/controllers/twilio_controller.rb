class TwilioController < ApplicationController
    def new
    end
    def create
        from_phone = "+18573664437"
        to_phone = params[:phone]
        txt = params[:textmessage]

        # 25.times do
        client = Twilio::REST::Client.new(TW_SID, TW_TOK)
        @message = client.account.sms.messages.create({:from => from_phone, :to => to_phone, :body => txt})
        redirect_to twilio_path
    end
end
