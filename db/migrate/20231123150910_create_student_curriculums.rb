class CreateStudentCurriculums < ActiveRecord::Migration[7.1]
  def change
    create_table :student_curriculums do |t|
      t.references :student, null: false, foreign_key: true
      t.references :curriculum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
