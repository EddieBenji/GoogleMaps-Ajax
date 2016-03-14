class Student < ActiveRecord::Base

  validates_uniqueness_of :registration_number

  def self.exists_and_match_student?(registration_number, password)
    student = Student.find_by(registration_number: registration_number)
    student.present? and student.password == password
  end
end
