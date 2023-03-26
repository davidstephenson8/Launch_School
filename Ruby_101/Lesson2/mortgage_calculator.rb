=begin

P 
inputs = loan amount, APR, loan duration
outputs = monthly interest rate, loan duration in months, monthly payment

questions

If someone inputs the duration of the loan in years can we translate that? 

E

what happens if zeros and nils are put in?

D
A
C

=end

require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')
puts MESSAGES.inspect

def prompt(message)
	puts "$$$$ #{message}"
end

def apr_to_monthly_interest_rate(apr)
	monthly_interest_rate = apr / 12
end

def years_to_months(years)
	months = years * 12
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['introduction'])

prompt(MESSAGES['loan_amount'])
loan_amount = gets.chomp.to_f

prompt(MESSAGES['APR'])
apr = gets.chomp.to_f/100

prompt(MESSAGES['loan_duration'])
loan_duration_years = gets.chomp.to_f

loan_duration = years_to_months(loan_duration_years)

monthly_interest_rate = apr_to_monthly_interest_rate(apr)

monthly_payment = loan_amount * (monthly_interest_rate/ ( 1 - (1 + monthly_interest_rate)**(-loan_duration)))

puts(MESSAGES['monthly_payment'] + "#{monthly_payment}")

puts "loan amount is #{loan_amount} monthly interest rate is #{monthly_interest_rate} loan duration is #{loan_duration}"