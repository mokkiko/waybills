class WaybillsController < ApplicationController
  before_action :set_waybill, only: %i[ show edit update destroy ]

  # GET /waybills or /waybills.json
  def index
    @waybills = Waybill.all
  end

  # GET /waybills/1 or /waybills/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
          render pdf: "Invoice No.",
          page_size: 'A4',
          template: "waybills/show.html.erb",
          layout: "pdf.html",
          orientation: "Landscape",
          lowquality: true,
          zoom: 1,
          dpi: 75
      end
  end
  end

  # GET /waybills/new
  def new
    @waybill = Waybill.new
  end

  # GET /waybills/1/edit
  def edit
  end

  # POST /waybills or /waybills.json
  def create
    @waybill = Waybill.new(waybill_params)

    respond_to do |format|
      if @waybill.save
        format.html { redirect_to waybill_url(@waybill), notice: "Waybill was successfully created." }
        format.json { render :show, status: :created, location: @waybill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @waybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waybills/1 or /waybills/1.json
  def update
    respond_to do |format|
      if @waybill.update(waybill_params)
        format.html { redirect_to waybill_url(@waybill), notice: "Waybill was successfully updated." }
        format.json { render :show, status: :ok, location: @waybill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @waybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waybills/1 or /waybills/1.json
  def destroy
    @waybill.destroy

    respond_to do |format|
      format.html { redirect_to waybills_url, notice: "Waybill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waybill
      @waybill = Waybill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def waybill_params
      params.require(:waybill).permit(:driver_id, :waybill_date, :mileage_at_morning, :mileage_at_evening, :mileage_daily)
    end
end
