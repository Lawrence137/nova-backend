class LoanApplication < ApplicationRecord
    has_one_attached :passport
    has_one_attached :residence
    has_one_attached :bank_statement
end
