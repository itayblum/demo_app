class FoosersController < ApplicationController
  before_action :set_fooser, only: [:show, :edit, :update, :destroy]

  # GET /foosers
  # GET /foosers.json
  def index
    @foosers = Fooser.all
  end

  # GET /foosers/1
  # GET /foosers/1.json
  def show
  end

  # GET /foosers/new
  def new
    @fooser = Fooser.new
  end

  # GET /foosers/1/edit
  def edit
  end

  # POST /foosers
  # POST /foosers.json
  def create
    @fooser = Fooser.new(fooser_params)

    respond_to do |format|
      if @fooser.save
        format.html { redirect_to @fooser, notice: 'Fooser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fooser }
      else
        format.html { render action: 'new' }
        format.json { render json: @fooser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foosers/1
  # PATCH/PUT /foosers/1.json
  def update
    respond_to do |format|
      if @fooser.update(fooser_params)
        format.html { redirect_to @fooser, notice: 'Fooser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fooser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foosers/1
  # DELETE /foosers/1.json
  def destroy
    @fooser.destroy
    respond_to do |format|
      format.html { redirect_to foosers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fooser
      @fooser = Fooser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fooser_params
      params.require(:fooser).permit(:name, :email, :gender)
    end
end
