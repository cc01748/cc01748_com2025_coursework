class ApplicationMailer < ActionMailer::Base
  # Set default from, as cannot be blank
  default from: 'cc01748@surrey.ac.uk'
  layout "contact_handler_format"
end
