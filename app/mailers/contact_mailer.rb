class ContactMailer < ApplicationMailer
    default from: 'contacto@code-web.es'

    def contact_email
    #   @user = params[:user]
      mail(to: "alejandroudaquiola1@gmail.com", subject: 'Code web contact request')
    end
end
