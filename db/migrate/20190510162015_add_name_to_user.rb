class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    #personal information
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :marital_status, :string
    add_column :users, :birth_date, :date
    add_column :users, :city, :string
    add_column :users, :address, :string
    add_column :users, :mobile_phone, :string
    add_column :users, :land_line, :string
    add_column :users, :id_number, :string
    add_column :users, :issue_date, :date
    #financial information
    add_column :users, :employment_status, :string
    add_column :users, :monthly_income, :integer
    add_column :users, :employer, :string
    add_column :users, :dependant_number, :integer
    add_column :users, :housing_type, :string
    add_column :users, :housing_expenses, :integer
    add_column :users, :monthly_expenses, :integer
    add_column :users, :debts_number, :integer
    add_column :users, :total_debts_amount, :integer
    add_column :users, :debt_term, :integer
    #supports
    add_column :users, :referal, :string
    add_column :users, :id_photo, :string
    add_column :users, :utility_bill, :string
  end
end
