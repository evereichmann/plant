class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  # GET /plants
  # GET /plants.json
  def index
    if params[:search] == ""
      @plants = Plant.order(params[:sort]) 
      @cuttings = Cutting.all
    elsif params[:search] 
      search_term = params[:search].downcase
      @plants = Plant.all.select{|plant|
        plant.tag == search_term.to_i ||
        plant.name.downcase.include?(search_term)
      }
      @cuttings = Cutting.all.select{|cutting|
        cutting.tag == search_term.to_i ||
        cutting.name.downcase.include?(search_term)
      }
  else 
    @plants = Plant.order(params[:sort])
    @cuttings = Cutting.all
  end 
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
  end

  # GET /plants/new
  def new
    @orders = Order.all
    @plant = Plant.new
  end

  # GET /plants/1/edit
  def edit
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_params
      params.require(:plant).permit(:tag , :order_id, :name, :unit_price, :arrival_date, :condition, :recovery_date, :sold, :price)
    end
end
