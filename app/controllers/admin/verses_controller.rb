class Admin::VersesController < Admin::BaseController
  before_action :set_verse, only: [ :show, :edit, :update, :destroy ]

  def index
    @verses = Verse.recent
  end

  def show
  end

  def new
    @verse = Verse.new
  end

  def create
    @verse = Verse.new(verse_params)

    if @verse.save
      redirect_to verses_path, notice: "Verse created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @verse.update(verse_params)
      redirect_to verse_path(@verse), notice: "Verse updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @verse.destroy
    redirect_to verses_path, notice: "Verse deleted."
  end

  private
    def set_verse
      @verse = Verse.find(params[:id])
    end

    def verse_params
      params.require(:verse).permit(:reference, :scripture, :body, :featured_imagegg, :featured_image_title, :featured_image_attribution, :featured_image_attribution_link)
    end
end
