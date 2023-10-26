function final_loan_amount = CalculateFinalAmount(starting_loan_amount, interest_each_month, loan_term)
final_loan_amount = starting_loan_amount;

for i = 1:loan_term + 1
    final_loan_amount = final_loan_amount + interest_each_month(i);
end
end