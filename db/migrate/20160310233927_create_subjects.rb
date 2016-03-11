class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_id
      t.string :term
      t.string :name
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
