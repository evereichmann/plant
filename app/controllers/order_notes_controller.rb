class OrderNotesController < ApplicationController
  before_action :set_order_note, only: [:edit, :update, :destroy]


  # GET /order_notes/new
  def new
    @order = Order.all
    @order_note = OrderNote.new
  end

  # GET /order_notes/1/edit
  def edit
  end

  # POST /order_notes
  # POST /order_notes.json
  def create
    @order_note = OrderNote.new(order_note_params)

    respond_to do |format|
      if @order_note.save
        format.html { redirect_to order_path(@order_note.order_id), notice: 'Order note was successfully created.' }
        format.json { render :show, status: :created, location: @order_note }
        # redirect_to order_path(@order_note.order_id)
      else
        format.html { render :new }
        format.json { render json: @order_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_notes/1
  # PATCH/PUT /order_notes/1.json
  def update
    respond_to do |format|
      if @order_note.update(order_note_params)
        format.html { redirect_to order_path(@order_note.order_id), notice: 'Order note was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_note }
      else
        format.html { render :edit }
        format.json { render json: @order_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_notes/1
  # DELETE /order_notes/1.json
  def destroy
    @order_note.destroy
    respond_to do |format|
      format.html { redirect_to order_path(@order_note.order_id), notice: 'Order note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_note
      @order_note = OrderNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_note_params
      params.require(:order_note).permit(:information, :order_id)
    end
end
