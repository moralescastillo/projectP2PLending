User.destroy_all

test_user = User.new(
  first_name: 'Daniel',
  last_name: 'Trujillo',
  email: 'daniel@gmail.com',
  password: '123456',
  marital_status: 'Single',
  birth_date: '1987-12-30',
  city: 'Neiva',
  address: 'Calle 56 1W-99',
  mobile_phone: '3006747173',
  land_line: '88763990',
  id_number: '1029022045',
  issue_date: '2004-01-15',
  employment_status: 'Unemployed',
  monthly_income: 2000000,
  dependant_number: 0,
  housing_type: 'Owner',
  housing_expenses: 500000,
  monthly_expenses: 400000,
  debts_number: 1,
  total_debts_amount: 200000,
  debt_term: 1,
  referal: '123xyz',
  id_photo: 'xxx',
  utility_bill: 'yyy')

test_user.save!
