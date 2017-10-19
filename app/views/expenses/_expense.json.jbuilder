json.extract! expense, :id, :price, :ex_in_flag, :category, :sub_category, :use_date, :memo, :created_at, :updated_at
json.url expense_url(expense, format: :json)
