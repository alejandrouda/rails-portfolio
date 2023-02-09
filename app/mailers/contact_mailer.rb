class ContactMailer < ApplicationMailer
    default from: 'contacto@code-web.es'

    def contact_email
      mail(to: "contacto@code-web.es", subject: 'Code web contact request')
    end
end
