class VersesController < ApplicationController
  allow_unauthenticated_access

  def index
    @verses = Verse.recent
  end

  def latest
    @verse = Verse.latest
  end

  def show
    @verse = Verse.find(params[:id])
  end
end
