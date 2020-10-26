class NotesController < ApplicationController
  before_action :authenticate_user!
  def new
    @note = Note.new
  end

  def create
    # @note = Note.new(note_params)
    @note = current_user.notes.build(note_params)
    @note.save
    redirect_to notes_path
  end

  def index
    
    @q = Note.all.ransack(params[:q])
    @notes = @q.result(distinct: true)
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to note_path
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :category_id, :explanation,:user_id)
  end
end
