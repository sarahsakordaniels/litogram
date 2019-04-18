class ArtWorksController < ApplicationController
  before_action :set_art_work, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!, only: [:new]
  # GET /art_works
  # GET /art_works.json
  def index
    @art_works = ArtWork.all
  end

  # GET /art_works/1
  # GET /art_works/1.json
  def show
  end

  # GET /art_works/new
  def new
    @art_work = ArtWork.new
  end

  # GET /art_works/1/edit
  def edit
  end

  # POST /art_works
  # POST /art_works.json
  def create
    @art_work = ArtWork.new(art_work_params)

    respond_to do |format|
      if @art_work.save
        format.html { redirect_to @art_work, notice: 'Art work was successfully created.' }
        format.json { render :show, status: :created, location: @art_work }
      else
        format.html { render :new }
        format.json { render json: @art_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_works/1
  # PATCH/PUT /art_works/1.json
  def update
    respond_to do |format|
      if @art_work.update(art_work_params)
        format.html { redirect_to @art_work, notice: 'Art work was successfully updated.' }
        format.json { render :show, status: :ok, location: @art_work }
      else
        format.html { render :edit }
        format.json { render json: @art_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_works/1
  # DELETE /art_works/1.json
  def destroy
    @art_work.destroy
    respond_to do |format|
      format.html { redirect_to art_works_url, notice: 'Art work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_work
      @art_work = ArtWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_work_params
      params.require(:art_work).permit(:title, :style, :description, :year, :wiki, :image_link, :artist_id)
    end
end
