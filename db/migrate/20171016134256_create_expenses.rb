class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.integer :price
      t.boolean :ex_in_flag
      t.integer :category
      t.integer :sub_category
      t.date :use_date
      t.string :memo

      t.timestamps
    end
  end
end
