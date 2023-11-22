class AddCoordinatesToPhilosophers < ActiveRecord::Migration[7.1]
  def change
    add_column :philosophers, :latitude, :float
    add_column :philosophers, :longitude, :float
  end
end
