starting_loan_amount = 1000;
interest_rate = 5/100;
loan_term = 4000;

interest_each_month = CalculateInterest(starting_loan_amount, interest_rate, loan_term);
for i = 1:loan_term + 1
    current_month = i;
    months(1,i) = current_month - 1;
end
figure
stem(months, interest_each_month);

total_interest = 0;
for i = 1:length(interest_each_month)
    total_interest = total_interest + interest_each_month(i);
end
disp(total_interest);








final_loan_amount = CalculateFinalAmount(starting_loan_amount, interest_each_month, loan_term);
disp(final_loan_amount);

monthly_installments = CalculateMonthlyInstallments(final_loan_amount, loan_term);
disp(monthly_installments);


%Plot the changing loan amount:
loan_value_after_each_month = [starting_loan_amount];

for i=1:loan_term
    loan_value_after_each_month(i + 1) = loan_value_after_each_month(i) + interest_each_month(i + 1) - monthly_installments;
end

figure
stem(months, loan_value_after_each_month);








