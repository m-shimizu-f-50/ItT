class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to notes_path
  end

  def index
    @notes = Note.all
  end

  def show
  end

  private

  def note_params
    params.require(:note).permit(:title, :category_id, :explanation)
  end
end