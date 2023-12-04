class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_curriculums, dependent: :destroy
  has_many :curriculums, through: :student_curriculums
  validates :first_name, :last_name, :email, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[first_name]
  end
end
