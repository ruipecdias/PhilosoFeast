class AddColumnToDinners < ActiveRecord::Migration[7.1]
  def change
    add_column :dinners, :credit_card, :string
  end
end
