class LottiesController < ApplicationController
  def index
    @number = (1..45).to_a
    @lotto = @number.sample(7).sort()
  end
end
