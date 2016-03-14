class Student < ActiveRecord::Base

  def self.exists_and_match_student?(registration_number, password)
    student = Student.find_by(registration_number: registration_number)
    student.present? and student.password == password
  end


end
