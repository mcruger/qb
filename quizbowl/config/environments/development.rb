Quizbowl::Application.configure do
# ActionMailer Config
config.action_mailer.default_url_options = { :host => 'qb.com' }
config.action_mailer.delivery_method = :smtp
# change to true to allow email to be sent during development
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = false
config.action_mailer.default :charset => "utf-8"

# config.action_mailer.delivery_method = :smtp
# Defaults to:
 config.action_mailer.smtp_settings =  {
:address              => "smtp.gmail.com",
:port                 => 587,
:domain               => "qb.com",
:user_name            => "qbexample@gmail.com",
:password             => "qbexample111",
:authentication       => "plain",
:enable_starttls_auto => true
}

# config.action_mailer.perform_deliveries = true
#config.action_mailer.raise_delivery_errors = true

end
