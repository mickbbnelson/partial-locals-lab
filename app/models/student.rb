# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(query)
    #if query
      student = Student.where("NAME like ?", "%#{query}%")   #need to figure out how to search parts of a word
      if student
        student
      else
        @students = Student.all
      end
    #else
    #  @students = Student.all
    #end
  end
end
