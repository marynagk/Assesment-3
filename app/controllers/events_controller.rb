class EventsController < ApplicationController
  before_action :authorize
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @events = Event.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @event = Event.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
        # format.json { render :show, status: :created, location: @user }
      else
        # format.html { render :new }
      #   format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


end
