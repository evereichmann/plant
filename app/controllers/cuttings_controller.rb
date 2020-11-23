class CuttingsController < ApplicationController
  before_action :set_cutting, only: [:show, :edit, :update, :destroy]

  # GET /cuttings
  # GET /cuttings.json
  def index
    if params[:search] == ""
      @cuttings = Cutting.order(params[:sort])
    elsif params[:search]
      search_term = params[:search].downcase
      @cuttings = Cutting.all.select{|cutting|
        cutting.tag == search_term.to_i ||
        cutting.name.downcase.include?(search_term)
      }
    else   
      @cuttings = Cutting.order(params[:sort]) 
    end
  end  

  # GET /cuttings/1
  # GET /cuttings/1.json
  def show
  end

  # GET /cuttings/new
  def new
    @plant = Plant.all
    @cutting = Cutting.new
  end

  # GET /cuttings/1/edit
  def edit
  end

  # POST /cuttings
  # POST /cuttings.json
  def create
    @cutting = Cutting.new(cutting_params)

    respond_to do |format|
      if @cutting.save
        format.html { redirect_to @cutting, notice: 'Cutting was successfully created.' }
        format.json { render :show, status: :created, location: @cutting }
      else
        format.html { render :new }
        format.json { render json: @cutting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuttings/1
  # PATCH/PUT /cuttings/1.json
  def update
    respond_to do |format|
      if @cutting.update(cutting_params)
        format.html { redirect_to @cutting, notice: 'Cutting was successfully updated.' }
        format.json { render :show, status: :ok, location: @cutting }
      else
        format.html { render :edit }
        format.json { render json: @cutting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuttings/1
  # DELETE /cuttings/1.json
  def destroy
    @cutting.destroy
    respond_to do |format|
      format.html { redirect_to cuttings_url, notice: 'Cutting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cutting
      @cutting = Cutting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cutting_params
      params.require(:cutting).permit(:name, :tag, :cutting_date, :generation, :sold, :price, :parent_id, :parent_type, :mother, :condition)
    end
end
