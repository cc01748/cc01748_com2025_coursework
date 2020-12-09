require 'test_helper'

class ContactHandlerMailerTest < ActionMailer::TestCase
  # Create email parameters to be used in email format
  def setup
    @name = 'Testman'
    @message = 'Hello'
    @email = 'testman@gmail.com'
  end

  # create mailer instance using contact_handler_format format
  test 'tests if mailer works' do
    email = ContactHandlerMailer.contact_handler_format
    assert_emails 1 do
      email.deliver_now
    end

  # test that email is formatted and sent to correct address
    assert_equal email.to, ['cc01748@surrey.ac.uk']
    assert_equal email.from, [@email]
    assert_equal subject, ['Click and Collect message']
    assert_match 'Hello', email.body.encoded
  end

end
