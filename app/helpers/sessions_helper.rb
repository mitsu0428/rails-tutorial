module SessionsHelper
    # 渡されたユーザーでログインする
    def log_in(user)
      session[:user_id] = user.id
    end

    def current_user
        puts "user_id: #{session[:user_id]}"
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    def logged_in?
        !current_user.nil?
    end
end
