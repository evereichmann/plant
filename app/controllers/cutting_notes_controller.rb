class CuttingNotesController < ApplicationController
  before_action :set_cutting_note, only: [:show, :edit, :update, :destroy]


  # GET /cutting_notes/new
  def new
    @cutting_note = CuttingNote.new
  end

  # GET /cutting_notes/1/edit
  def edit
  end

  # POST /cutting_notes
  # POST /cutting_notes.json
  def create
    @cutting_note = CuttingNote.new(cutting_note_params)

    respond_to do |format|
      if @cutting_note.save
        format.html { redirect_to cutting_path(@cutting_note.cutting_id), notice: 'Cutting note was successfully created.' }
        format.json { render :show, status: :created, location: @cutting_note }
      else
        format.html { render :new }
        format.json { render json: @cutting_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cutting_notes/1
  # PATCH/PUT /cutting_notes/1.json
  def update
    respond_to do |format|
      if @cutting_note.update(cutting_note_params)
        format.html { redirect_to cutting_path(@cutting_note.cutting_id) , notice: 'Cutting note was successfully updated.' }
        format.json { render :show, status: :ok, location: @cutting_note }
      else
        format.html { render :edit }
        format.json { render json: @cutting_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cutting_notes/1
  # DELETE /cutting_notes/1.json
  def destroy
    @cutting_note.destroy
    respond_to do |format|
      format.html { redirect_to cutting_path(@cutting_note.cutting_id) , notice: 'Cutting note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cutting_note
      @cutting_note = CuttingNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cutting_note_params
      params.require(:cutting_note).permit(:title, :note_date, :text_field, :cutting_id)
    end
end
