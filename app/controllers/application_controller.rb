class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
        # pages_dashboard_path
        orders_path
    end
end
