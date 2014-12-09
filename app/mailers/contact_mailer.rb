class ContactMailer < ActionMailer::Base
  default from: 'notifications@consultingbenefits.com'

  def thanks_email(contacts)
    @contacts = contacts
    @url  = 'http://www.consultingbeneftis.com'
    mail(to: 'seanallaband2010@gmail.com', subject: 'Someone has submitted a Contact Request')
  end


def welcome_email(contacts, email_body)
    mail(to: contacts.email,
         body: email_body,
         content_type: "text/html",
         subject: "Someone has submitted a Contact Request")
  end

end