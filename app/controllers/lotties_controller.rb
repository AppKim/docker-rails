class LottiesController < ApplicationController
  def login_check
    unless user_signed_in?
      redirect_to new_user_session_path
    else
      redirect_to lottiespage_path
    end
  end

  def index
    @number = (1..45).to_a
    @lotto = @number.sample(7).sort()
  end
end
