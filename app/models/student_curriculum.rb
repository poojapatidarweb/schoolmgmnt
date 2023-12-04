class StudentCurriculum < ApplicationRecord
  belongs_to :student
  belongs_to :curriculum
end
