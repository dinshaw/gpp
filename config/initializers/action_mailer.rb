ActionMailer::Base.smtp_settings = {
        :address => "localhost",
        :port => 25,
        :domain => "thegamespeopleplaycambridge.com",          
        :authentication => :login,
        :user_name => "carol@thegamespeopleplaycambridge.com",
        :password => "Chlchj07",
}

ActionMailer::Base.raise_delivery_errors = true