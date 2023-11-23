class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :philosophers
  has_many :dinners

  def create
    @philosopher = current_user.build_philosopher(philosopher_params)
    if @philosopher.save
      current_user.update(isphilosopher: true)
      redirect_to some_path, notice: "Successfully registered as a philosopher."
    else
      render :new
    end
  end
end
