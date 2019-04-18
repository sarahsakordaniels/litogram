class WordOfTheDaysController < ApplicationController
  before_action :set_word_of_the_day, only: [:show, :edit, :update, :destroy]

  # GET /word_of_the_days
  # GET /word_of_the_days.json
  def index
    @word_of_the_days = WordOfTheDay.all
  end

  # GET /word_of_the_days/1
  # GET /word_of_the_days/1.json
  def show
  end

  # GET /word_of_the_days/new
  def new
    @word_of_the_day = WordOfTheDay.new
  end

  # GET /word_of_the_days/1/edit
  def edit
  end

  # POST /word_of_the_days
  # POST /word_of_the_days.json
  def create
    @word_of_the_day = WordOfTheDay.new(word_of_the_day_params)

    respond_to do |format|
      if @word_of_the_day.save
        format.html { redirect_to @word_of_the_day, notice: 'Word of the day was successfully created.' }
        format.json { render :show, status: :created, location: @word_of_the_day }
      else
        format.html { render :new }
        format.json { render json: @word_of_the_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_of_the_days/1
  # PATCH/PUT /word_of_the_days/1.json
  def update
    respond_to do |format|
      if @word_of_the_day.update(word_of_the_day_params)
        format.html { redirect_to @word_of_the_day, notice: 'Word of the day was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_of_the_day }
      else
        format.html { render :edit }
        format.json { render json: @word_of_the_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_of_the_days/1
  # DELETE /word_of_the_days/1.json
  def destroy
    @word_of_the_day.destroy
    respond_to do |format|
      format.html { redirect_to word_of_the_days_url, notice: 'Word of the day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_of_the_day
      @word_of_the_day = WordOfTheDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_of_the_day_params
      params.require(:word_of_the_day).permit(:word, :definition, :origin, :example, :part_of_speech, :pronunciation)
    end
end
