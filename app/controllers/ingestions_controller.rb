class IngestionsController < ApplicationController
  before_action :set_ingestion, only: %i[ show edit update destroy ]

  # GET /ingestions or /ingestions.json
  def index
    @ingestions = Ingestion.all
  end

  # GET /ingestions/1 or /ingestions/1.json
  def show
  end

  # GET /ingestions/new
  def new
    @ingestion = Ingestion.new
  end

  # GET /ingestions/1/edit
  def edit
  end

  # POST /ingestions or /ingestions.json
  def create
    @ingestion = Ingestion.new(ingestion_params)

    respond_to do |format|
      if @ingestion.save
        format.html { redirect_to ingestion_url(@ingestion), notice: "Ingestion was successfully created." }
        format.json { render :show, status: :created, location: @ingestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingestions/1 or /ingestions/1.json
  def update
    respond_to do |format|
      if @ingestion.update(ingestion_params)
        format.html { redirect_to ingestion_url(@ingestion), notice: "Ingestion was successfully updated." }
        format.json { render :show, status: :ok, location: @ingestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingestions/1 or /ingestions/1.json
  def destroy
    @ingestion.destroy

    respond_to do |format|
      format.html { redirect_to ingestions_url, notice: "Ingestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingestion
      @ingestion = Ingestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingestion_params
      params.require(:ingestion).permit(:dateAndTime, :user_id, :method, :strain)
    end
end
