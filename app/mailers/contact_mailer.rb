class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"yuevo16@gmail.com",subject: "confirmation"
  end
end