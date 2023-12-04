class AddSubmissionDateToStudentCurriculums < ActiveRecord::Migration[7.1]
  def change
    add_column :student_curriculums, :submission_date, :date
  end
end
