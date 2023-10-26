function monthly_installments = CalculateMonthlyInstallments(final_loan_amount, loan_term)
    monthly_installments = final_loan_amount/(loan_term + 1);
end