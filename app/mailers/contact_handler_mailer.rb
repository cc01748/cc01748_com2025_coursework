class ContactHandlerMailer < ApplicationMailer

    # Get data to be passed into mailer format 
    def new_email
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]

        # Send email to site owners address
        mail(to: 'cc01748@surrey.ac.uk', subject: 'Click and Collect message', from: @email)
    end
end
