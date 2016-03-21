class Subject < ActiveRecord::Base
  has_many :subjectclasses
  has_many :courses, through: :subjectclasses
end
