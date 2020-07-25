class PassengerMailer < ApplicationMailer
  default from: 'bbbrianboylen@gmail.com'

  def thank_you_email(pass)
    if pass
      mail(to: @passenger.email, subject: 'FLIGHT BOOKED!')
    end
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'FLIGHT BOOKED!')
  end
end
