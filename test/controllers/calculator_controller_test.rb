# frozen_string_literal: true

require 'test_helper'

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get calculator_index_url
    assert_response :success
  end

  test 'should get add' do
    get calculator_add_url
    assert_response :success
  end
end
