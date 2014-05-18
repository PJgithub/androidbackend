class AccessablemarkersController < ApplicationController
  before_action :set_accessablemarker, only: [:show, :edit, :update, :destroy]

  # GET /accessablemarkers
  # GET /accessablemarkers.json
  def index
    @accessablemarkers = Accessablemarker.all
  end

  # GET /accessablemarkers/1
  # GET /accessablemarkers/1.json
  def show
  end

  # GET /accessablemarkers/new
  def new
    @accessablemarker = Accessablemarker.new
  end

  # GET /accessablemarkers/1/edit
  def edit
  end

  # POST /accessablemarkers
  # POST /accessablemarkers.json
  def create
    @accessablemarker = Accessablemarker.new(accessablemarker_params)

    respond_to do |format|
      if @accessablemarker.save
        format.html { redirect_to @accessablemarker, notice: 'Accessablemarker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @accessablemarker }
      else
        format.html { render action: 'new' }
        format.json { render json: @accessablemarker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessablemarkers/1
  # PATCH/PUT /accessablemarkers/1.json
  def update
    respond_to do |format|
      if @accessablemarker.update(accessablemarker_params)
        format.html { redirect_to @accessablemarker, notice: 'Accessablemarker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accessablemarker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessablemarkers/1
  # DELETE /accessablemarkers/1.json
  def destroy
    @accessablemarker.destroy
    respond_to do |format|
      format.html { redirect_to accessablemarkers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessablemarker
      @accessablemarker = Accessablemarker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessablemarker_params
      params.require(:accessablemarker).permit(:markerid, :accesorid)
    end
end
