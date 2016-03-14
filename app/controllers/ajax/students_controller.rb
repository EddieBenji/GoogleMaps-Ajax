class Ajax::StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token
  # skip_before_filter :authenticate


  # GET /zombies
  # GET /zombies.json
  def index
    @students = Student.all
    render json: {students: @students}
  end

  # GET /zombies/1
  # GET /zombies/1.json
  def show
    render json: {student: @student}
  end

  # GET /zombies/new
  def new
    @student = Student.new
  end

  # GET /zombies/1/edit
  def edit
  end

  # POST /zombies
  # POST /zombies.json
  def create
    @student = Student.new(student_params)
    if @student.save
      render json: {msg: 'Estudiante agregado con éxito'}
    else
      render json: {msg: 'No se pudo agregar al estudiante'}
    end
  end

  # PUT/PATCH    /ajax/students/:id
  def update
    if @student.nil?
      render json: {msg: 'No existe ese estudiante'}
    elsif @student.update(student_params)
      render json: {msg: 'Estudiante actualizado'}
    else
      render json: {msg: 'No se pudo actualizar el estudiante'}
    end

  end

  # DELETE /ajax/students/:id
  def destroy
    if @student.nil?
      render json: {msg: 'No existe ese estudiante'}
    elsif @student.destroy
      render json: {msg: 'Estudiante eliminado con éxito'}
    else
      render json: {msg: 'No se pudo eliminar el estudiante'}
    end
  end

  def show_map
    @students = Student.all
    @hash = Gmaps4rails.build_markers(@students) do |student, marker|
      marker.lat student.latitude
      marker.lng student.altitude
      marker.infowindow student.name
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    @student = nil
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def student_params
    params.require(:student).permit(:registration_number, :name,
                                    :first_last_name,
                                    :second_last_name, :age,
                                    :street, :crossings,
                                    :number, :suburb, :postal_code, :latitude,
                                    :altitude, :password)
  end

end
