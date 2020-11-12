class PlantNotesController < ApplicationController
  before_action :set_plant_note, only: [:show, :edit, :update, :destroy]

  before_action :set_plant_note, only: [:edit, :update, :destroy]

  # GET /plant_notes/new
  def new
    @plant = Plant.all
    @plant_note = PlantNote.new
  end

  # GET /plant_notes/1/edit
  def edit
    @plant = Plant.all
  end

  # POST /plant_notes
  # POST /plant_notes.json
  def create
    @plant_note = PlantNote.new(plant_note_params)

    respond_to do |format|
      if @plant_note.save
        format.html { redirect_to plant_path(@plant_note.plant_id) , notice: 'Plant note was successfully created.' }
        format.json { render :show, status: :created, location: @plant_note }
      else
        format.html { render :new }
        format.json { render json: @plant_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_notes/1
  # PATCH/PUT /plant_notes/1.json
  def update
    respond_to do |format|
      if @plant_note.update(plant_note_params)
        format.html { redirect_to plant_path(@plant_note.plant_id), notice: 'Plant note was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_note }
      else
        format.html { render :edit }
        format.json { render json: @plant_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_notes/1
  # DELETE /plant_notes/1.json
  def destroy
    @plant_note.destroy
    respond_to do |format|
      format.html { redirect_to plant_path(@plant_note.plant_id), notice: 'Plant note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_note
      @plant_note = PlantNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plant_note_params
      params.require(:plant_note).permit(:title, :note_date, :text_field, :plant_id, :plant_image)
    end
end
