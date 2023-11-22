class Dinners < ActiveRecord::Migration[7.1]
  def change
    rename_column :dinners, :lenght, :length
  end
end
