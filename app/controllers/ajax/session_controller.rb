class Ajax::SessionController < ApplicationController

  def login
  end

  def save_login
    registration_number = params[:registration_number]
    password = params[:password]
    respond_to do |format|
      if Student.exists_and_match_student?(registration_number, password)
        session[:registration_number] = params[:registration_number]
        format.json { render json: {session_started: 'session_started'} }
      else
        format.json { render json: {student_not_found: 'student_not_found'} }
      end
    end
  end

  def logout
    session.delete(:registration_number)
    render json: {msg: 'Haz salido de la sesión'}
  end

  def index
    @students = Student.all
    render json: {students: @students}
  end

end
