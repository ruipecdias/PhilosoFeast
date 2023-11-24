class PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:show, :edit, :update]
    before_action :authenticate_user!, only: [:new, :create]

    # GET /philosophers
    def index
      if params[:query].present?
        @philosophers = Philosopher.joins(:user).where("users.username ILIKE ?", "%#{params[:query]}%")
      else
        @philosophers = Philosopher.all
      end
      @markers = @philosophers.geocoded.map do |philosopher|
        {
          lat: philosopher.latitude,
          lng: philosopher.longitude,
          url: philosopher_path(philosopher)
        }
      end
    end

    # GET /philosophers/:id
    def show
      @philosopher = Philosopher.find(params[:id])
        @marker = [{
          lat: @philosopher.latitude,
          lng: @philosopher.longitude
        }]
      @dinner = Dinner.new
    end

    # GET /philosophers/new
    def new
      if current_user.philosopher
        redirect_to some_other_path, alert: "You are already registered as a philosopher."
      else
        @philosopher = Philosopher.new
      end
    end

    # POST /philosophers
    def create
      @philosopher = current_user.philosophers.build(philosopher_params)

      if @philosopher.save
        redirect_to @philosopher, notice: 'Philosopher was successfully created.'
      else
        render :new
      end
    end

    # GET /philosophers/:id/edit
    def edit
      # The view will display the edit form for the philosopher
    end

    # PATCH/PUT /philosophers/:id
    def update
      if @philosopher.update(philosopher_params)
        redirect_to @philosopher, notice: 'Philosopher was successfully updated.'
      else
        render :edit
      end
    end

    private

    def set_philosopher
      @philosopher = Philosopher.find(params[:id])
    end

    def philosopher_params
      params.require(:philosopher).permit(:age, :location, :availability, :bio, :price_per_hour, :preferred_topic, :philosophical_focus, :dress_code, :nationality, :communication_style, :user_id)
    end
  end
