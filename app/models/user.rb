class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  MARITAL_STATUS = ['Single', 'Married', 'Divorced', 'Widowed']
  EMPLOYMENT_STATUS = ['Employee', 'Informal Worker', 'Self-employed', 'Unemployed']
  HOUSING_TYPE = ['Owner', 'Rental']

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :marital_status, presence: true, inclusion: { in: MARITAL_STATUS }
  validates :birth_date, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :mobile_phone, presence: true, numericality: true, uniqueness: true
  validates :land_line, numericality: true, uniqueness: true
  validates :id_number, presence: true, uniqueness: true
  validates :issue_date, presence: true
  validates :employment_status, presence: true, inclusion: { in: EMPLOYMENT_STATUS }
  #validates :employer
  validates :monthly_income, presence: true, numericality: true
  validates :dependant_number, presence: true, numericality: true
  validates :housing_type, presence: true, inclusion: { in: HOUSING_TYPE }
  validates :housing_expenses, presence: true, numericality: true
  validates :monthly_expenses, presence: true, numericality: true
  validates :debts_number, presence: true, numericality: true
  validates :total_debts_amount, presence: true, numericality: true
  validates :debt_term, presence: true, numericality: true
  validates :referal, presence: true
  validates :id_photo, presence: true
  validates :utility_bill, presence: true

end
