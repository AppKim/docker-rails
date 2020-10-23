# frozen_string_literal: true

class CalculatorsController < ApplicationController
  def index; end

  def add
    first = params[:first].to_i
    second = params[:second].to_i
    @result = first + second
  end
end
