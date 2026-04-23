class VersesController < ApplicationController
  before_action :set_verse, only: [ :show, :edit, :update, :destroy ]

  def index
    @verses = Verse.recent
  end

  def latest
    @verse = Verse.latest
  end

  def show
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

  def edit
  end

  def update
    if @verse.update(verse_params)
      redirect_to @verse, notice: "The verse was updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @verse.destroy
    redirect_to verses_path, notice: "The verse was deleted successfully."
  end

  private
    def set_verse
      @verse = Verse.find(params[:id])
    end

    def verse_params
      params.require(:verse).permit(:reference, :scripture, :body)
    end
end
