class CreateLoanApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :loan_applications do |t|
      t.decimal :loanAmount, precision: 15, scale: 2, null: false
      t.string :passport, null: false
      t.string :kra_pin, null: false
      t.string :residence, null: false
      t.string :bank_statement, null: false

      t.timestamps
    end
  end
end
