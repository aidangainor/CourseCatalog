class AddColumnToSubjectclass < ActiveRecord::Migration
  def change
    add_column :subjectclasses, :subject_id, :integer
    add_column :subjectclasses, :course_id, :integer
  end
end
