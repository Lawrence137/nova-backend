class LoanApplicationSerializer < ActiveModel::Serializer
  attributes :id, :loanAmount, :passport, :kra_pin, :residence, :bank_statement
end
