ActionMailer::Base.smtp_settings = {
  address: "mail.megachopp.com.py",
  port: 465,
  domain: 'megachopp.com.py',
  #user_name: "comercial@megachopp.com.py",
  user_name: ENV['MAIL_ADDRESS'],
  #password: "Comercial1542",
  password: ENV['MAIL_APP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true,
  ssl: true,
  openssl_verify_mode: 'none'
}

