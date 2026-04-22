class VersesController < ApplicationController
  def index
    @verses = Verse.recent
  end

  def latest
    @verse = Verse.latest
  end

  def show
    @verse = Verse.find(params[:id])
  end

  def new
    @verse = Verse.new
  end

  def create
    @verse = Verse.new(verse_params)

    if @verse.save
      redirect_to @verse, notice: "The verse was created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def verse_params
      params.require(:verse).permit(:reference, :scripture, :body)
    end
end