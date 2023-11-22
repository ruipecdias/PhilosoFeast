class RemoveColumnFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :credit_card, :string
  end
end
