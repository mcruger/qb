class UserMailer < ActionMailer::Base
  default from: "qbexample@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://quizbowl.com/sessions/new'
    attachments.inline['header.png'] = {
                                :data => File.read(Rails.root.join('app/assets/images/QuizBowlLogo.png')),
                                :mime_type => "image/png",
                              }
    mail(to: @user.email, subject: 'Welcome to Quiz Bowl')
  end

end

 
  