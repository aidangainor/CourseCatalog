class CreateSubjectclasses < ActiveRecord::Migration
  def change
    create_table :subjectclasses do |t|

      t.timestamps null: false
    end
  end
end
