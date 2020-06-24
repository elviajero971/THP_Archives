class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /events
  def index
    @events = Event.all
  end
  
  # GET /events/1
  def show
    @event = Event.find(params[:id])
    if @event.admin_id == current_user
      @admin = current_user
    end  
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end
  
  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events
  def create
    @event = Event.new(title: params[:title], duration: params[:duration], description: params[:description], price: params[:price],start_date: params[:start_date], location: params[:location], admin_id: current_user.id)
    if @event.save
      redirect_to root_path
      flash[:success] = "L'évènement a bien été créer!"
    else
      flash[:danger] = "La saisie n'a pas un format valide, merci de saisir à nouveau"
      redirect_to event_path
    end

  end  


  # PATCH/PUT /events/1
  def update
    @event = Event.find(params[:id])
    if @event.update(title: params[:title], duration: params[:duration], description: params[:description], price: params[:price],start_date: params[:start_date], location: params[:location], admin_id: current_user.id)
      redirect_to root_path
      flash[:success] = "L'évènement a bien été modifié!"
    else
      flash[:danger] = "La saisie n'a pas un format valide, merci de saisir à nouveau"
      redirect_to event_path
    end
  end


   # DELETE /events/1
  def destroy
    Event.find(params[:id]).delete
    redirect_to root_path
  end

  private

  def event_params
    params.require(:events).permit(:title, :location, :duration, :description, :price, :start_date, :admin_id)
  end

end
