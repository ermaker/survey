class OptionsController < ApplicationController
  before_action :set_question

  respond_to :html

  def create
    @option = @question.options.new(option_params)
    @option.save
    respond_with(@question)
  end

  private
    def set_question
      @question = Question.find(params[:question_id])
    end

    def option_params
      params.require(:option).permit(:name)
    end
end
