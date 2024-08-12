class ApplicationController < ActionController::Base
    def index
        render 'pages/index'  
    end
    
    # Redirect to sign-in page after sign-out
    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path 
    end
end
