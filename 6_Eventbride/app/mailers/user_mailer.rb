class UserMailer < ApplicationMailer
  default from: 'lucas.illiano@hotmail.com'

  def welcome_email(user)
    @user = user 

    @url  = 'https://event-brite-thp-perfect.herokuapp.com/' 

    mail(to: @user.email, subject: 'Bienvenue sur notre site !') 
  end

  def participation_email(attendance)
    @admin = User.find(attendance.event.admin_id)
    @event = Event.find(attendance.event.id)
    @participant = User.find(attendance.user.id)
    mail(to: @admin.email, subject: 'Nouveau participant')    
  end
end