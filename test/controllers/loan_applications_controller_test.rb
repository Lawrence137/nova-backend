require "test_helper"

class LoanApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_application = loan_applications(:one)
  end

  test "should get index" do
    get loan_applications_url, as: :json
    assert_response :success
  end

  test "should create loan_application" do
    assert_difference("LoanApplication.count") do
      post loan_applications_url, params: { loan_application: { bank_statement: @loan_application.bank_statement, kra_pin: @loan_application.kra_pin, loanAmount: @loan_application.loanAmount, passport: @loan_application.passport, residence: @loan_application.residence } }, as: :json
    end

    assert_response :created
  end

  test "should show loan_application" do
    get loan_application_url(@loan_application), as: :json
    assert_response :success
  end

  test "should update loan_application" do
    patch loan_application_url(@loan_application), params: { loan_application: { bank_statement: @loan_application.bank_statement, kra_pin: @loan_application.kra_pin, loanAmount: @loan_application.loanAmount, passport: @loan_application.passport, residence: @loan_application.residence } }, as: :json
    assert_response :success
  end

  test "should destroy loan_application" do
    assert_difference("LoanApplication.count", -1) do
      delete loan_application_url(@loan_application), as: :json
    end

    assert_response :no_content
  end
end
