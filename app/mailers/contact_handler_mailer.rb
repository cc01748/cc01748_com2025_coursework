class ContactHandlerMailer < ApplicationMailer
    default from: @email

    def contact_handler_format
        @name = params["user"]
        @message = params["email"]
        mail(to: 'cc01748@surrey.ac.uk', subject: 'Click and Collect message')
    end
end
