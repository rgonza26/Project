class MaineventsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_mainevent, only: [:show, :edit, :update, :destroy]

  def index
    @mainevents = Mainevent.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    respond_with(@mainevents)
  end

  def show
    respond_with(@mainevent)
  end

  def new
    @mainevent = Mainevent.new
    respond_with(@mainevent)
  end

  def edit
  end

  def create
    @mainevent = Mainevent.new(mainevent_params)
    @mainevent.save
    respond_with(@mainevent)
  end

  def update
    @mainevent.update(mainevent_params)
    respond_with(@mainevent)
  end

  def destroy
    @mainevent.destroy
    respond_with(@mainevent)
  end

  private
    def set_mainevent
      @mainevent = Mainevent.find(params[:id])
    end

    def mainevent_params
      params.require(:mainevent).permit(:name, :date, :description, :image)
    end
end
