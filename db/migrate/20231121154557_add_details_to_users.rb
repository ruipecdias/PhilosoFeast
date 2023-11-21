class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :credit_card, :string
    add_column :users, :image_url, :string
    add_column :users, :philosopher, :boolean
  end
end
