class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index
    #@quiz = "next charenger"
    #@exam = Exam.new(:id => 123)
    #@exam.text = 'what\'s dmesg ?'
    #@exam.choose = '(1)aaa (2)bbbb (3)ccc'
  end

  def show
    quiz_id = params[:id]
    @quiz = Quiz.new
    @quiz.text = 'what\'s dmesg ?'
    @quiz.choose = ['(1)aaa', '(2)bbbb', '(3)ccc']
    

    status = 'success'
    render json: { status: status, data: @quiz}
    
  end

  def post
    quiz_id = params[:id]
    @quiz = quiz_id
  end

end