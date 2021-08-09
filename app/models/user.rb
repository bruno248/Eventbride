class User < ApplicationRecord
    after_create :welcome_send
   
    has_many :events, foreign_key: 'administrator_id'
    has_many :attendances, foreign_key: 'participant_id'
    has_many :events, through: :attendances
  
    def welcome_send
      UserMailer.welcome_email(self).deliver_now #appel le mailer UserMailer et l'envoi direct
    end
  
end
