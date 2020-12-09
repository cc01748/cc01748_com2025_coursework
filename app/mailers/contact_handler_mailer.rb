class ContactHandlerMailer < ApplicationMailer
    default from: @email

    # Get data to be passed into mailer format 
    def contact_handler_format
        @name = params["user"]
        @email = params["email"]
        @message = params["message"]
        # Send email to site owners address
        mail(to: 'cc01748@surrey.ac.uk', subject: 'Click and Collect message')
    end
end
