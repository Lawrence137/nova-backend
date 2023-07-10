class LoanApplicationsController < ApplicationController
  before_action :set_loan_application, only: %i[ show update destroy ]

  # GET /loan_applications
  def index
    @loan_applications = LoanApplication.all

    render json: @loan_applications
  end

  # GET /loan_applications/1
  def show
    render json: @loan_application
  end

  # POST /loan_applications
  def create
    @loan_application = LoanApplication.new(loan_application_params)

    if @loan_application.save
      render json: @loan_application, status: :created, location: @loan_application
    else
      render json: @loan_application.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loan_applications/1
  def update
    if @loan_application.update(loan_application_params)
      render json: @loan_application
    else
      render json: @loan_application.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loan_applications/1
  def destroy
    @loan_application.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_application
      @loan_application = LoanApplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_application_params
      params.require(:loan_application).permit(:loanAmount, :passport, :kra_pin, :residence, :bank_statement)
    end
end
