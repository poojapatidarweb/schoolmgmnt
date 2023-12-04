class Curriculum < ApplicationRecord
  has_many :student_curriculums
  has_many :students, through: :student_curriculums
end
