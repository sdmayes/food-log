class EnrtiesController < ApplicationController
  before_action :set_enrty, only: %i[ show edit update destroy ]

  # GET /enrties or /enrties.json
  def index
    @enrties = Enrty.all
  end

  # GET /enrties/1 or /enrties/1.json
  def show
  end

  # GET /enrties/new
  def new
    @enrty = Enrty.new
  end

  # GET /enrties/1/edit
  def edit
  end

  # POST /enrties or /enrties.json
  def create
    @enrty = Enrty.new(enrty_params)

    respond_to do |format|
      if @enrty.save
        format.html { redirect_to @enrty, notice: "Enrty was successfully created." }
        format.json { render :show, status: :created, location: @enrty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enrty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrties/1 or /enrties/1.json
  def update
    respond_to do |format|
      if @enrty.update(enrty_params)
        format.html { redirect_to @enrty, notice: "Enrty was successfully updated." }
        format.json { render :show, status: :ok, location: @enrty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enrty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrties/1 or /enrties/1.json
  def destroy
    @enrty.destroy
    respond_to do |format|
      format.html { redirect_to enrties_url, notice: "Enrty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrty
      @enrty = Enrty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enrty_params
      params.require(:enrty).permit(:meal_type, :calories, :fats, :carbs)
    end
end
