# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Showire::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.free.fr",
#  :port => 547,
#  :domain => "gmail.com", # HELO domain
#  :user_name => "user@gmail.com",
#  :password => "password",
#  :authentication => :plain # :plain, :login, :cram_md5
  }