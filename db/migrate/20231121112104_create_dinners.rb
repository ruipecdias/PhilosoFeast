class CreateDinners < ActiveRecord::Migration[7.1]
  def change
    create_table :dinners do |t|
      t.integer :philosopher_id
      t.integer :user_id
      t.integer :lenght
      t.integer :status
      t.timestamp :date

      t.timestamps
    end
  end
end
