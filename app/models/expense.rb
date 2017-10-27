class Expense < ApplicationRecord
  scope :use_date, -> {
    where(use_date: Time.now.beginning_of_month..Time.now.end_of_month).
    where(ex_in_flag: "true")
  }
end
