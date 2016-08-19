class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @questions = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]

    if @question.saved
      flash[:notice] = "Question has been saved."
      redirect_to @question
    else flash.now[:alert] = "Save error, try again"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]

    if @question.saved
      flash[:notice] = "Question has been saved."
      redirect_to @question
    else flash.now[:alert] = "Save error, try again"
      render :new
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted succesfully."
      redirect_to question_path
    else
      flash.now[:alert] = "There was an error deleting the question."
      render :show
    end
  end

end
