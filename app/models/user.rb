class User < ApplicationRecord
    after_create :welcome_send
  
    def welcome_send
      UserMailer.welcome_email(self).deliver_now #appel le mailer UserMailer et l'envoi direct
    end
  
end
