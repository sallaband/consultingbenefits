class ContactMailer < ActionMailer::Base
  # ContactMailer.delivery_method = :test
  # ContactMailer.delivery_method = :file
  # ContactMailer.file_settings = { :location => Rails.root.join('tmp/mail') }

  default from: 'notifications@consultingbenefits.com'

  def thanks_email(contact)
      @contact = contact
      @url  = 'http://www.consultingbenefits.com'
      mail(
        to: 'seanallaband2010@gmail.com',
        subject: 'Someone has submitted a Contact Request',
        body: 'Someone has submitted a Contact Request',
        content_type: "text/html"
      )
  end
end
