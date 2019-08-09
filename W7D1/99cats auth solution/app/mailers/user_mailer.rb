class UserMailer < ApplicationMailer

    default from: 'contact@appacademy.io'

    def welcome_email(user)
        @user = user

        mail(to: @user.username, subject: 'Welcome to My Awesome 99 Cats Site')
    end
end
