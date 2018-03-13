class LifepointesController < ApplicationController
  before_action :set_lifepointe, only: [:show, :edit, :update, :destroy]

  # GET /lifepointes
  # GET /lifepointes.json
  def index
    @lifepointes = Lifepointe.all
  end

  # GET /lifepointes/1
  # GET /lifepointes/1.json
  def show
  end

  # GET /lifepointes/new
  def new
    @lifepointe = Lifepointe.new
  end

  # GET /lifepointes/1/edit
  def edit
  end

  # POST /lifepointes
  # POST /lifepointes.json
  def create
    @lifepointe = Lifepointe.new(lifepointe_params)

    respond_to do |format|
      if @lifepointe.save
        format.html { redirect_to @lifepointe, notice: 'Lifepointe was successfully created.' }
        format.json { render :show, status: :created, location: @lifepointe }
      else
        format.html { render :new }
        format.json { render json: @lifepointe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifepointes/1
  # PATCH/PUT /lifepointes/1.json
  def update
    respond_to do |format|
      if @lifepointe.update(lifepointe_params)
        format.html { redirect_to @lifepointe, notice: 'Lifepointe was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifepointe }
      else
        format.html { render :edit }
        format.json { render json: @lifepointe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifepointes/1
  # DELETE /lifepointes/1.json
  def destroy
    @lifepointe.destroy
    respond_to do |format|
      format.html { redirect_to lifepointes_url, notice: 'Lifepointe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifepointe
      @lifepointe = Lifepointe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifepointe_params
      params.require(:lifepointe).permit(:fname, :lname, :email, :phone)
    end
end
