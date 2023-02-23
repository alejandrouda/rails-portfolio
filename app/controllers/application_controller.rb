require 'net/https'
require 'open-uri'

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  RECAPTCHA_MINIMUM_SCORE = 0.5

  # ... other methods

  def verify_recaptcha?(token, recaptcha_action)
    secret_key = ENV['RECAPTCHA_SECRET_KEY']

    uri = URI.parse("https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{token}")
    p '-------URI-------', uri
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
    p json
    json['success'] && json['score'] > RECAPTCHA_MINIMUM_SCORE && json['action'] == recaptcha_action
  end
end
