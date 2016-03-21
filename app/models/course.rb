class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :subjectclasses
  has_many :subjects, through: :subjectclasses
  has_many :users, through: :enrollements
end
