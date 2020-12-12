# Preview all emails at http://localhost:3000/rails/mailers/contact_handler_mailer
class ContactHandlerMailerPreview < ActionMailer::Preview
    def send_email
        @name = 'John Smith'
        @email = 'fakeemail@gmail.com'
        @message = 'Hello, I have an issue with the site!'
        ContactHandlerMailer.with(name: @name, email: @email, message: @message).new_email
    end
end
