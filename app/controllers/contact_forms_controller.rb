require 'sendgrid-ruby'
include SendGrid

class ContactFormsController < ApplicationController
 
    skip_before_action :authenticate_user!

    def contact_email(form_data)
        # Initialize Sendgrid API
        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
        # Mail data
        mail = {
            "from"=>{"email"=>"contacto@code-web.es"}, 
            "subject"=>"New contact request from code-web.es", 
            "personalizations"=>[{"to"=>[{"email"=>"contacto@code-web.es"}]}], 
            "content"=>[{"type"=>"text/plain", "value"=>"
    Name: #{form_data[:name]}
    Mail: #{form_data[:email]}
    Phone: #{form_data[:phone]}

    #{form_data[:content]}"}]
        }

        # Send mail
        send_mail = sg.client.mail._('send').post(request_body: mail.to_json)
        puts send_mail.status_code
    end

    def new
        @contact_form = ContactForm.new
    end
    
    def create
        @contact_form = ContactForm.new(contact_form_params)
        if verify_recaptcha(model: @contact_form)
            
            if @contact_form.valid?
                contact_email(contact_form_params)
                redirect_to contacto_path, notice: "Mensaje enviado"
            else
                # redirect_to contacto_path, notice: "Por favor completa todos los campos del formulario."
                flash.now[:error] = "Invalid input. Please correct the errors below."
                render :new, contacto_path: contacto_path
            end

        else
            redirect_to contacto_path, notice: "Fallo al autorizar reCAPTCHA. Por favor intente nuevamente."
        end
    end

    private

    def contact_form_params
        params.require(:contact_form).permit(:name, :email, :phone, :content, :policy_consent)
    end

end
