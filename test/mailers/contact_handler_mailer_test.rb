require 'test_helper'

class ContactHandlerMailerTest < ActionMailer::TestCase

  # Create mailer instance using contact_handler_format format
  test 'tests if mailer works' do
    # Create dummy data to be passed to mailer
    @name = 'John Smith'
    @message = 'Hello, I have a problem with your site!'
    @email = 'johnsmith@gmail.com'

    # Test if the email is sent
    email = ContactHandlerMailer.with(name: @name, email: @email, message: @message)
    assert_emails 1 do
      email.new_email.deliver
    end

  # Test that the email sent is not empty
  assert !ActionMailer::Base.deliveries.empty?
  end

end
