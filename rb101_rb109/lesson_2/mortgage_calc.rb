# pseudo code
# get loan amount (year)
# get annual percentage rate (APR) -> convert percent to decimal.
# get loan duration (year)
# monthly_pay = loan_amt * (monthly_int / (1 - (1 + monthly_int)**(-n)))
# monthly_int = annual_int / 12
# monthly_loan_duration = loan_duration / 12

def prompt(str)
  puts "=> #{str}"
end

loop do
  prompt("Enter the loan amount (yearly):")

  amount = ''
  loop do
    amount = gets.chomp
    if amount.empty? || amount.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  interest_rate = ''
  loop do
    prompt("Enter the interest rate:")
    interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  years = ''
  loop do
    prompt("Enter the annual loan duration:")
    years = gets.chomp
    if years.empty? || years.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  annual_int = interest_rate.to_f / 100
  monthly_interest_rate = annual_int / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate**(-months)))

  prompt("Monthly interest rate is: #{monthly_interest_rate}")
  prompt("Loan duration in months is: #{months}")
  prompt("Monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Do you want to continue? (press 'Y' to run again.)")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
