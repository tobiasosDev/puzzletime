# == Schema Information
#
# Table name: employees
#
#  id                        :integer          not null, primary key
#  firstname                 :string(255)      not null
#  lastname                  :string(255)      not null
#  shortname                 :string(3)        not null
#  passwd                    :string(255)
#  email                     :string(255)      not null
#  management                :boolean          default(FALSE)
#  initial_vacation_days     :float
#  ldapname                  :string(255)
#  eval_periods              :string(3)        is an Array
#  department_id             :integer
#  committed_worktimes_at    :date
#  probation_period_end_date :date
#  phone_office              :string
#  phone_private             :string
#  street                    :string
#  postal_code               :string
#  city                      :string
#  birthday                  :date
#  emergency_contact_name    :string
#  emergency_contact_phone   :string
#  marital_status            :integer
#  social_insurance          :string
#  crm_key                   :string
#

Fabricator(:employee) do
  firstname { Faker::Name.first_name }
  lastname  { Faker::Name.last_name }
  shortname { ('A'..'Z').to_a.shuffle.take(3).join }
  email     { Faker::Internet.email }
end
