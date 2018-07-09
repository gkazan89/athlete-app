class AthletesController < ApplicationController
  def index 
    @athletes = Athlete.all
    render "index.json.jbuilder"
  end

  def create
    @athlete = Athlete.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      sport: params[:sport],
      number: params[:number]
      )
    @athlete.save
    render "show.json.jbuilder"
  end

  def show
    @athlete = Athlete.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @athlete = Athlete.find_by(id: params[:id])
    @athlete.first_name = params[:first_name] || @athlete.first_name
    @athlete.last_name = params[:last_name] || @athlete.last_name
    @athlete.sport = params[:sport] || @athlete.sport
    @athlete.number = params[:number] || @athlete.number
    @athlete.save
    render "show.json.jbuilder"
  end

  def destroy
    @athlete = Athlete.find_by(id: params[:id])
    @athlete.destroy
    render json: {message: "Athlete removed"}
  end
end



