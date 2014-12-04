class MainSitesController < ApplicationController
  before_action :set_main_site, only: [:show, :edit, :update, :destroy]

  # GET /main_sites
  # GET /main_sites.json
  def index
    @main_sites = MainSite.all
  end

  # GET /main_sites/1
  # GET /main_sites/1.json
  def show
  end

  # GET /main_sites/new
  def new
    @main_site = MainSite.new
  end

  # GET /main_sites/1/edit
  def edit
  end

  # POST /main_sites
  # POST /main_sites.json
  def create
    @main_site = MainSite.new(main_site_params)

    respond_to do |format|
      if @main_site.save
        format.html { redirect_to @main_site, notice: 'Main site was successfully created.' }
        format.json { render :show, status: :created, location: @main_site }
      else
        format.html { render :new }
        format.json { render json: @main_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_sites/1
  # PATCH/PUT /main_sites/1.json
  def update
    respond_to do |format|
      if @main_site.update(main_site_params)
        format.html { redirect_to @main_site, notice: 'Main site was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_site }
      else
        format.html { render :edit }
        format.json { render json: @main_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_sites/1
  # DELETE /main_sites/1.json
  def destroy
    @main_site.destroy
    respond_to do |format|
      format.html { redirect_to main_sites_url, notice: 'Main site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_site
      @main_site = MainSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_site_params
      params[:main_site]
    end
end
