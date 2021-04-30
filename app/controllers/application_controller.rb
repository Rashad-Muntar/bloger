class ApplicationController < ActionController::Base

    helper_method :current_user, :loggedin?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def loggedin?
        !!current_user
    end

    def require_before
        if !loggedin?
            redirect_to login_path
        end
    end

    def require_same_user
        if current_user != @article.user
            redirect_to root_path
        end
    end
end
