# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Fixit::Application.initialize!

#config.action_mailer.delivery_method = :smtp
#config.action_mailer.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:authentication => :plain,
:domain => ENV['GMAIL_USERNAME'],
:user_name => ENV['GMAIL_USERNAME'],
:password => ENV['GMAIL_PASSWORD']
}

require 'casclient'
require 'casclient/frameworks/rails/filter'

CASClient::Frameworks::Rails::Filter.configure(
  :cas_base_url => "https://auth.berkeley.edu/cas",
  :validate_url => "https://auth.berkeley.edu/cas/serviceValidate"
                                               )
