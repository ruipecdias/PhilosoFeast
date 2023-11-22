class PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:show, :edit, :update]
  
    # GET /philosophers
    def index
      @philosophers = Philosopher.all
      @markers = @philosophers.geocoded.map do |philosopher|
        {
          lat: philosopher.latitude,
          lng: philosopher.longitude
        }
      end
    end
  
    # GET /philosophers/:id
    def show
      # The view will display the details of the philosopher
      @philosopher = Philosopher.find(params[:id])
    end
  
    # GET /philosophers/new
    def new
      @philosopher = Philosopher.new
    end
  
    # POST /philosophers
    def create
      @philosopher = Philosopher.new(philosopher_params)
  
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
      params.require(:philosopher).permit(:age, :location, :availability, :bio, :price_per_hour, :preferred_topic, :philosophical_focus, :dress_code, :language, :communication_style, :user_id)
    end
  end