function interest_for_each_month = CalculateInterest(starting_amount, interest_rate, loan_term)

x_n = [starting_amount];
y_n = zeros(loan_term);
interest_for_each_month = [0];
for i = 2:loan_term + 1
    y_n(i) = x_n(i - 1) * (1 + interest_rate)^(1/12); 
    x_n(i) = y_n(i);
    interest_for_each_month(i) = x_n(i) - x_n(i - 1);
end
end