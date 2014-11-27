class SelectionsController < ApplicationController
  before_action :set_question
  before_action :set_selection, only: [:update]

  respond_to :html

  def create
    @selection = @question.selections.new(selection_params)
    @selection.user = current_user
    @selection.save
    respond_with(@question)
  end

  def update
    begin
      @selection.update(selection_params)
    rescue ActionController::ParameterMissing
      @selection.destroy
    end
    respond_with(@question)
  end

  private
    def set_question
      @question = Question.find(params[:question_id])
    end

    def set_selection
      @selection = @question.selections.find(params[:id])
    end

    def selection_params
      params.require(:selection).permit(option_ids: [])
    end
end
