class User < ApplicationRecord

validates :username, :session_token, presence: true
validate :password_digest, message: "Password can't be blank" presence: true 
validates :password, length: { minimum: 6  allow_nil: true }


after_initialize :ensure_session_token


private
  
    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end

end
