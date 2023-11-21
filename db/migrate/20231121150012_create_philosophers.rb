class CreatePhilosophers < ActiveRecord::Migration[7.1]
  def change
    create_table :philosophers do |t|
      t.integer :age
      t.string :location
      t.string :availability
      t.text :bio
      t.integer :price_per_hour
      t.string :preferred_topic
      t.string :philosophical_focus
      t.string :dress_code
      t.string :language
      t.string :communication_style
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
