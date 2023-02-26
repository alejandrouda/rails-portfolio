class PackagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index ]

    def index
        @packages = Package.all
    end
end
