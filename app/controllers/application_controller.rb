class ApplicationController < ActionController::Base
    # ログイン後に遷移するページ
    def after_sign_in_path_for(resource)
      lottiespage_path
    end

    def after_sign_out_path_for(resource)
      new_user_session_path
    end
end
